#include "llvm_common.hpp"

extern "C"
{

BOOL parse_block_easy(ALLOC sNodeBlock** node_block, sParserInfo* info)
{
    expect_next_character_with_one_forward("{", info);
    sVarTable* old_table = info->lv_table;

    *node_block = ALLOC sNodeBlock_alloc();
    info->lv_table = init_block_vtable(old_table);

    if(!parse_block(*node_block, info)) {
        sNodeBlock_free(*node_block);
        return FALSE;
    }

    expect_next_character_with_one_forward("}", info);
    info->lv_table = old_table;

    return TRUE;
}

BOOL parse_block(sNodeBlock* node_block, sParserInfo* info)
{
    xstrncpy(node_block->mSName, info->sname, PATH_MAX);
    node_block->mSLine = info->sline;

    info->mBlockLevel++;
    
    char* source_head = info->p;
    BOOL has_result = FALSE;

    while(1) {
        if(*info->p == '}') {
            break;
        }
        else if(*info->p == '\0') {
            parser_err_msg(info, "require } before the source end");
            info->err_num++;

            info->mBlockLevel--;
            return TRUE;
        }

        unsigned int node = 0;

        skip_spaces_and_lf(info);

        int sline = info->sline;
        char sname[PATH_MAX];
        xstrncpy(sname, info->sname, PATH_MAX);

        info->sline_top = sline;

        if(!expression(&node, info)) {
            info->mBlockLevel--;
            return FALSE;
        }

        if(node == 0) {
            parser_err_msg(info, "require an expression");
            info->err_num++;
        }

        gNodes[node].mLine = sline;
        xstrncpy(gNodes[node].mSName, sname, PATH_MAX);

        if(info->err_num == 0) {
            append_node_to_node_block(node_block, node);
        }

        if(*info->p == ';') {
            info->p++;
            skip_spaces_and_lf(info);
            has_result = FALSE;
        }
        else {
            has_result = TRUE;
        }

        if(*info->p == '}') {
            break;
        }
        else if(*info->p == '\0') {
            parser_err_msg(info, "require } before the source end");
            info->err_num++;
            info->mBlockLevel--;
            return TRUE;
        }
    }

    char* source_end = info->p;

    sBuf_append(&(node_block)->mSource, source_head, source_end - source_head);
    sBuf_append_char(&(node_block)->mSource, '\0');

    node_block->mLVTable = info->lv_table;
    node_block->mHasResult = has_result;

    info->mBlockLevel--;

    return TRUE;
}

BOOL compile_block(sNodeBlock* block, sCompileInfo* info, sNodeType* result_type)
{
    sVarTable* old_table = info->pinfo->lv_table;
    info->pinfo->lv_table = block->mLVTable;

    BOOL has_result = block->mHasResult;

    int stack_num_before = info->stack_num;

    if(block->mNumNodes == 0) {
        info->type = create_node_type_with_class_name("void");
    }
    else {
        int i;
        for(i=0; i<block->mNumNodes; i++) {
            unsigned int node = block->mNodes[i];

            xstrncpy(info->sname, gNodes[node].mSName, PATH_MAX);
            info->sline = gNodes[node].mLine;

            if(!compile(node, info)) {
                info->pinfo->lv_table = old_table;
                return FALSE;
            }

            if(i == block->mNumNodes -1)
            {
                BOOL last_expression_is_return = gNodes[node].mNodeType == kNodeTypeReturn;

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

                        return TRUE;
                    }

                    std_move(NULL, result_type, &llvm_value, FALSE, info);

                    info->type = llvm_value.type;
                    int alignment = get_llvm_alignment_from_node_type(llvm_value.type);

                    Builder.CreateAlignedStore(llvm_value.value, (Value*)info->result_variable, alignment);
                }
                else if(has_result) {
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

                        return TRUE;
                    }

                    push_value_to_stack_ptr(&llvm_value, info);

                    std_move(NULL, result_type, &llvm_value, FALSE, info);

                    info->type = llvm_value.type;
                }
                else {
                    arrange_stack(info, stack_num_before);

                    info->type = create_node_type_with_class_name("void");
                }
            }
            else {
                arrange_stack(info, stack_num_before);
            }
        }
    }

    free_objects(info->pinfo->lv_table, info);
    //free_right_value_objects(info);

    info->pinfo->lv_table = old_table;

    return TRUE;
}

}
