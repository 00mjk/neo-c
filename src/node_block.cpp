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
    node_block->mSName = info->sname;
    node_block->mSLine = info->sline;
    
    char* source_head = info->p;
    BOOL has_result = FALSE;

    while(1) {
        if(*info->p == '}') {
            break;
        }
        else if(*info->p == '\0') {
            parser_err_msg(info, "require } before the source end");
            info->err_num++;
            return TRUE;
        }

        unsigned int node = 0;

        int sline = info->sline;
        char* sname = info->sname;

        if(!expression(&node, info)) {
            return FALSE;
        }

        if(node == 0) {
            parser_err_msg(info, "require an expression");
            info->err_num++;
        }

        gNodes[node].mLine = sline;
        gNodes[node].mSName = sname;

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
            return TRUE;
        }
    }

    char* source_end = info->p;

    sBuf_append(&(node_block)->mSource, source_head, source_end - source_head);
    sBuf_append_char(&(node_block)->mSource, '\0');

    node_block->mLVTable = info->lv_table;
    node_block->mHasResult = has_result;

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

            info->sname = gNodes[node].mSName;
            info->sline = gNodes[node].mLine;

            if(!compile(node, info)) {
                info->pinfo->lv_table = old_table;
                return FALSE;
            }

            if(i == block->mNumNodes -1)
            {
                if(result_type && type_identify_with_class_name(result_type, "void"))
                {
                    arrange_stack(info, stack_num_before);

                    info->type = create_node_type_with_class_name("void");
                }
                else if(has_result) {
                    LVALUE llvm_value = *get_value_from_stack(-1);
                    arrange_stack(info, stack_num_before);

                    if(cast_posibility(result_type, llvm_value.type))
                    {
                        cast_right_type_to_left_type(result_type, &llvm_value.type, &llvm_value, info);
                    }

                    if(!substitution_posibility(result_type, llvm_value.type)) {
                        compile_err_msg(info, "The different type between left type and right type.");
                        show_node_type(result_type);
                        show_node_type(llvm_value.type);
                        info->err_num++;

                        info->type = create_node_type_with_class_name("int"); // dummy

                        return TRUE;
                    }

                    push_value_to_stack_ptr(&llvm_value, info);


                    std_move(result_type, &llvm_value);

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

    free_objects(block->mLVTable, info);
    //free_right_value_objects(info);

    info->pinfo->lv_table = old_table;

    return TRUE;
}

}
