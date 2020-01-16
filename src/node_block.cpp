#include "llvm_common.hpp"

extern "C"
{

BOOL parse_block_easy(ALLOC sNodeBlock** node_block, BOOL extern_c_lang, sParserInfo* info)
{
    if(*info->p == '{') {
        info->p++;
    }

    sVarTable* old_table = info->lv_table;

    *node_block = ALLOC sNodeBlock_alloc();

    info->lv_table = init_block_vtable(old_table, extern_c_lang);

    if(!parse_block(*node_block, extern_c_lang, info)) {
        sNodeBlock_free(*node_block);
        return FALSE;
    }

    expect_next_character_with_one_forward("}", info);

    info->lv_table = old_table;

    return TRUE;
}

BOOL parse_block(sNodeBlock* node_block, BOOL extern_c_lang, sParserInfo* info)
{
    node_block->mLVTable = info->lv_table;

    xstrncpy(node_block->mSName, info->sname, PATH_MAX);
    node_block->mSLine = info->sline;

    skip_spaces_and_lf(info);

    node_block->mExternCLang = extern_c_lang;

    if(!extern_c_lang) {
        info->mBlockLevel++;
    }

    BOOL parse_block = info->parse_block;
    info->parse_block = TRUE;

    char* source_head = info->p;
    BOOL has_result = FALSE;

    while(1) {
        if(!parse_sharp(info)) {
            info->parse_block = parse_block;
            return FALSE;
        }

        if(*info->p == '}') {
            break;
        }
        else if(*info->p == '\0') {
            parser_err_msg(info, "require } before the source end");
            info->err_num++;

            if(!extern_c_lang) {
                info->mBlockLevel--;
            }
            info->parse_block = parse_block;
            return TRUE;
        }

        unsigned int node = 0;

        skip_spaces_and_lf(info);

        int sline = info->sline;
        char sname[PATH_MAX];
        xstrncpy(sname, info->sname, PATH_MAX);

        info->sline_top = sline;

        if(!parse_sharp(info)) {
            info->parse_block = parse_block;
            return FALSE;
        }

        if(!expression(&node, info)) {
            if(!extern_c_lang) {
                info->mBlockLevel--;
            }
            info->parse_block = parse_block;
            return FALSE;
        }

        if(node == 0) {
            parser_err_msg(info, "require an expression");
            info->err_num++;
        }

        if(info->change_sline) {
            info->change_sline = FALSE;

            gNodes[node].mLine = info->sline;
            xstrncpy(gNodes[node].mSName, info->sname, PATH_MAX);

            info->sline_top = info->sline;
        }
        else {
            gNodes[node].mLine = sline;
            xstrncpy(gNodes[node].mSName, sname, PATH_MAX);
        }

        if(info->err_num == 0) {
            append_node_to_node_block(node_block, node);
        }

        if(!parse_sharp(info)) {
            info->parse_block = parse_block;
            return FALSE;
        }

        if(*info->p == ';') {
            info->p++;
            skip_spaces_and_lf(info);
            has_result = FALSE;
        }
        else {
            if(gNodes[node].mNodeType == kNodeTypeIf || gNodes[node].mNodeType == kNodeTypeWhile || gNodes[node].mNodeType == kNodeTypeFor) 
            {
            }
            else {
                has_result = TRUE;
            }
        }

        if(*info->p == '}') {
            break;
        }
        else if(*info->p == '\0') {
            parser_err_msg(info, "require } before the source end");
            info->err_num++;
            if(!extern_c_lang) {
                info->mBlockLevel--;
            }
            info->parse_block = parse_block;
            return TRUE;
        }
    }

    char* source_end = info->p;

    sBuf_append(&(node_block)->mSource, source_head, source_end - source_head);
    sBuf_append_char(&(node_block)->mSource, '\0');

    node_block->mHasResult = has_result;

    if(!extern_c_lang || info->mBlockLevel > 0) 
    {
        node_block->mHasResult = has_result;
    }
    else {
        node_block->mHasResult = FALSE;
    }

    node_block->mInCLang = info->in_clang;

    if(!extern_c_lang) {
        info->mBlockLevel--;
    }

    info->parse_block = parse_block;

    return TRUE;
}


BOOL compile_block(sNodeBlock* block, sCompileInfo* info, sNodeType* result_type, BOOL free_var_object)
{
    sVarTable* old_table = info->pinfo->lv_table;
    info->pinfo->lv_table = block->mLVTable;

    BOOL extern_c_lang = block->mExternCLang;

    BOOL has_result = block->mHasResult;

    if(!extern_c_lang && free_var_object) {
        free_right_value_objects(info);
    }

    int stack_num_before = info->stack_num;

    if(!extern_c_lang) {
        info->mBlockLevel++;
    }

    BOOL last_expression_is_return = FALSE;

    if(block->mNumNodes == 0) {
        info->type = create_node_type_with_class_name("void");
    }
    else {
        int i;
        for(i=0; i<block->mNumNodes; i++) {
            unsigned int node = block->mNodes[i];

            xstrncpy(info->sname, gNodes[node].mSName, PATH_MAX);
            int sline_before = info->sline;
            info->sline = gNodes[node].mLine;

            if(!compile(node, info)) {
                info->pinfo->lv_table = old_table;
                if(!extern_c_lang) {
                    info->mBlockLevel--;
                }
                info->sline = sline_before;
                return FALSE;
            }

            if(i == block->mNumNodes -1)
            {
                last_expression_is_return = gNodes[node].mNodeType == kNodeTypeReturn;

                if(last_expression_is_return) {
                    arrange_stack(info, stack_num_before);

                    info->type = create_node_type_with_class_name("void");

                    info->last_expression_is_return = TRUE;
                }
                else if(result_type && type_identify_with_class_name(result_type, "void"))
                {
                    arrange_stack(info, stack_num_before);

                    info->type = create_node_type_with_class_name("void");
                }
                else if(result_type && !type_identify_with_class_name(result_type, "void") && has_result && info->result_variable) 
                {
                    LVALUE llvm_value = *get_value_from_stack(-1);
                    arrange_stack(info, stack_num_before);

                    if(auto_cast_posibility(result_type, llvm_value.type))
                    {
                        cast_right_type_to_left_type(result_type, &llvm_value.type, &llvm_value, info);
                    }

                    if(!substitution_posibility(result_type, llvm_value.type, info)) {
                        compile_err_msg(info, "The different type between left type and right type.(1)");
                        show_node_type(result_type);
                        show_node_type(llvm_value.type);
                        info->err_num++;

                        info->type = create_node_type_with_class_name("int"); // dummy

                        if(!extern_c_lang) {
                            info->mBlockLevel--;
                        }
                        info->sline = sline_before;
                        return TRUE;
                    }

                    prevent_from_right_object_free(&llvm_value, info);

                    info->type = llvm_value.type;
                    int alignment = get_llvm_alignment_from_node_type(llvm_value.type);

                    info->has_block_result = TRUE;

                    Builder.CreateAlignedStore(llvm_value.value, (Value*)info->result_variable, alignment);
                }
                else if(has_result) {
                    LVALUE llvm_value = *get_value_from_stack(-1);

                    if(llvm_value.type == NULL 
                        || type_identify_with_class_name(llvm_value.type, "void") 
                        || (result_type && type_identify_with_class_name(result_type, "void")))
                    {
                        arrange_stack(info, stack_num_before);

                        info->type = create_node_type_with_class_name("void");

                        llvm_value.type = info->type;
                    }
                    else {
                        arrange_stack(info, stack_num_before);

                        if(auto_cast_posibility(result_type, llvm_value.type))
                        {
                            cast_right_type_to_left_type(result_type, &llvm_value.type, &llvm_value, info);
                        }

                        if(!substitution_posibility(result_type, llvm_value.type, info)) {
                            compile_err_msg(info, "The different type between left type and right type.(1)");
                            show_node_type(result_type);
                            show_node_type(llvm_value.type);
                            info->err_num++;

                            info->type = create_node_type_with_class_name("int"); // dummy

                            if(!extern_c_lang) {
                                info->mBlockLevel--;
                            }
                            info->sline = sline_before;
                            return TRUE;
                        }

                        if(llvm_value.binded_value) {
                            if(llvm_value.var) {
                                sVar* var = llvm_value.var;

                                if(is_included_var_from_this_table_only(info->pinfo->lv_table, var))
                                {
                                    llvm_value.binded_value = FALSE;
                                }
                            }
                        }

                        prevent_from_right_object_free(&llvm_value, info);

                        push_value_to_stack_ptr(&llvm_value, info);
                        info->has_block_result = TRUE;

                        info->type = llvm_value.type;
                    }
                }
                else {
                    arrange_stack(info, stack_num_before);

                    info->type = create_node_type_with_class_name("void");
                }
            }
            else {
                arrange_stack(info, stack_num_before);
            }

            info->sline = sline_before;
        }
    }

    if(!extern_c_lang && free_var_object) {
        if(!last_expression_is_return) {
            free_objects(info->pinfo->lv_table, info);
        }

        free_right_value_objects(info);
    }
    if(!extern_c_lang) {
        info->mBlockLevel--;
    }

    info->pinfo->lv_table = old_table;

    return TRUE;
}

BOOL skip_block(sParserInfo* info)
{
    if(*info->p == '{') {
        info->p++;

        BOOL dquort = FALSE;
        BOOL squort = FALSE;
        int sline = 0;
        int nest = 0;
        while(1) {
            if(dquort) {
                if(*info->p == '\\') {
                    info->p++;
                    if(*info->p == '\0') {
                        fprintf(stderr, "%s %d: unexpected the source end. close single quote or double quote.", info->sname, sline);
                        return FALSE;
                    }
                    info->p++;
                }
                else if(*info->p == '"') {
                    info->p++;
                    dquort = !dquort;
                }
                else {
                    info->p++;

                    if(*info->p == '\0') {
                        fprintf(stderr, "%s %d: unexpected the source end. close single quote or double quote.", info->sname, sline);
                        return FALSE;
                    }
                }
            }
            else if(squort) {
                if(*info->p == '\\') {
                    info->p++;
                    if(*info->p == '\0') {
                        fprintf(stderr, "%s %d: unexpected the source end. close single quote or double quote.", info->sname, sline);
                        return FALSE;
                    }
                    info->p++;
                }
                else if(*info->p == '\'') {
                    info->p++;
                    squort = !squort;
                }
                else {
                    info->p++;

                    if(*info->p == '\0') {
                        fprintf(stderr, "%s %d: unexpected the source end. close single quote or double quote.", info->sname, sline);
                        return FALSE;
                    }
                }
            }
            else if(*info->p == '\'') {
                sline = info->sline;
                info->p++;
                squort = !squort;
            }
            else if(*info->p == '"') {
                sline = info->sline;
                info->p++;
                dquort = !dquort;
            }
            else if(*info->p == '{') {
                info->p++;

                nest++;
            }
            else if(*info->p == '}') {
                info->p++;

                if(nest == 0) {
                    skip_spaces_and_lf(info);
                    break;
                }

                nest--;
            }
            else if(*info->p == '\0') {
                parser_err_msg(info, "The block requires } character for closing block");
                info->err_num++;
                return TRUE;
            }
            else if(*info->p == '\n') {
                info->p++;
                info->sline++;
            }
            else {
                info->p++;
            }
        }
    }
    else {
        parser_err_msg(info, "Require block");
        info->err_num++;
    }

    return TRUE;
}

}
