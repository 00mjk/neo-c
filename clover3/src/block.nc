#include "common.h"

bool parse_block(sCLNodeBlock** node_block, sParserInfo* info)
{
    info.blocks.push_back(new sCLNodeBlock);

    *node_block = info.blocks.item(-1, null);

    (*node_block)->nodes = new vector<sCLNode*>.initialize();

    (*node_block)->vtables = clone info.vtables;

    init_var_table(info);
    
    while(*info->p) {
        if(*info->p == '}') {
            break;
        }

        int sline = info.sline;
        
        sCLNode* node;
        if(!expression(&node, info)) {
            final_var_table(info);
            return false;
        }
        
        (*node_block)->has_last_value = true;

        while(*info->p == ';') {
            (*node_block)->has_last_value = false;
            info->p++;
            skip_spaces_and_lf(info);
        }

        (*node_block).nodes.push_back(node);
    }
    
    if(info.err_num > 0) {
        fprintf(stderr, "Parser error. The error number is %d\n", info.err_num);
        final_var_table(info);
        return false;
    }

    final_var_table(info);
    
    return true;
}

bool compile_block(sCLNodeBlock* node_block, sCompileInfo* info)
{
    var nodes = borrow node_block->nodes;
    var vtables = borrow node_block->vtables;
    var has_last_value = node_block.has_last_value;

    var vtables_before = info.pinfo.vtables;
    info.pinfo.vtables = vtables;

    bool return_false = false;

    nodes.each {
        int sline = it.sline;
    
        sCLNode* node = it;
        
        info.sline = sline;
        
        if(!compile(node, info)) {
            *it3 = true;
            return_false = true;
            return;
        }
        
        if(it2 != nodes.length() -1 || (!has_last_value && it2 == nodes.length()-1)) {
            /// POP ///
            for(int i=0; i<info.stack_num; i++) {
                if(!info.no_output) {
                    info.codes.append_int(OP_POP);
                }
            }
            
            info.stack_num = 0;

            info.type = create_type("void", info);
        }
    }

    if(return_false) {
        return false;
    }

    info.pinfo.vtables = vtables_before;
    
    return true;
}

CLObject create_block(sCLClass* klass, sCLType* type, sVMInfo* info)
{
}

