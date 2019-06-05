#include "common.h"

static sNodeType** gNodeTypes = NULL;
static int gUsedPageNodeTypes = 0;
static int gSizePageNodeTypes = 0;
static int gUsedNodeTypes = 0;

#define NODE_TYPE_PAGE_SIZE 64

void init_node_types()
{
    const int size_page_node_types = 4;

    if(gSizePageNodeTypes == 0) {
        gNodeTypes = xcalloc(1, sizeof(sNodeType*)*size_page_node_types);

        int i;
        for(i=0; i<size_page_node_types; i++) {
            gNodeTypes[i] = xcalloc(1, sizeof(sNodeType)*NODE_TYPE_PAGE_SIZE);
        }

        gSizePageNodeTypes = size_page_node_types;
        gUsedPageNodeTypes = 0;
        gUsedNodeTypes = 0;
    }
}

void free_node_types()
{
    if(gSizePageNodeTypes > 0) {
        int i;
        for(i=0; i<gSizePageNodeTypes; i++) {
            free(gNodeTypes[i]);
        }
        free(gNodeTypes);

        gSizePageNodeTypes = 0;
        gUsedPageNodeTypes = 0;
        gUsedNodeTypes = 0;
    }
}

static sNodeType* alloc_node_type()
{
    if(gUsedNodeTypes == NODE_TYPE_PAGE_SIZE) {
        gUsedNodeTypes = 0;
        gUsedPageNodeTypes++;

        if(gUsedPageNodeTypes == gSizePageNodeTypes) {
            int new_size = (gSizePageNodeTypes+1) * 2;
            gNodeTypes = xrealloc(gNodeTypes, sizeof(sNodeType*)*new_size);
            memset(gNodeTypes + gSizePageNodeTypes, 0, sizeof(sNodeType*)*(new_size - gSizePageNodeTypes));

            int i;
            for(i=gSizePageNodeTypes; i<new_size; i++) {
                gNodeTypes[i] = xcalloc(1, sizeof(sNodeType)*NODE_TYPE_PAGE_SIZE);
            }

            gSizePageNodeTypes = new_size;
        }
    }

    return &gNodeTypes[gUsedPageNodeTypes][gUsedNodeTypes++];
}

sNodeType* clone_node_type(sNodeType* node_type)
{
    sNodeType* node_type2 = alloc_node_type();

    node_type2->mClass = node_type->mClass;
    node_type2->mNumGenericsTypes = node_type->mNumGenericsTypes;

    int i;
    for(i=0; i<node_type->mNumGenericsTypes; i++) {
        node_type2->mGenericsTypes[i] = ALLOC clone_node_type(node_type->mGenericsTypes[i]);
    }

    node_type2->mArrayNum = node_type->mArrayNum;
    node_type2->mNullable = node_type->mNullable;
    node_type2->mPointerNum = node_type->mPointerNum;
    node_type2->mBorrow = node_type->mBorrow;

    if(node_type->mResultType) {
        node_type2->mResultType = clone_node_type(node_type->mResultType);
    }
    else {
        node_type2->mResultType = NULL;
    }

    node_type2->mNumParams = node_type->mNumParams;
    for(i=0; i<node_type->mNumParams; i++) {
        node_type2->mParamTypes[i] = clone_node_type(node_type->mParamTypes[i]);
    }

    return node_type2;
}

static void skip_spaces_for_parse_class_name(char** p) 
{
    while(**p == ' ' || **p == '\t') {
        (*p)++;
    }
}

static sNodeType* parse_class_name(char** p, char** p2, char* buf)
{
    sNodeType* node_type = alloc_node_type();

    node_type->mClass = NULL;
    node_type->mNumGenericsTypes = 0;
    node_type->mArrayNum = 0;
    node_type->mNullable = FALSE;

    *p2 = buf;

    while(**p) {
        if(**p == '<') {
            (*p)++;
            skip_spaces_for_parse_class_name(p);

            **p2 = 0;

            node_type->mClass = get_class(buf);

            if(node_type->mClass == NULL) {
                return NULL;
            }

            while(1) {
                node_type->mGenericsTypes[node_type->mNumGenericsTypes] = parse_class_name(p, p2, buf);
                node_type->mNumGenericsTypes++;

                if(node_type->mNumGenericsTypes >= GENERICS_TYPES_MAX) {
                    return NULL;
                }

                if(**p == ',') {
                    (*p)++;
                    skip_spaces_for_parse_class_name(p);
                }
                else if(**p == '>') {
                    (*p)++;
                    skip_spaces_for_parse_class_name(p);
                    return node_type;
                }
                else {
                    return NULL;
                }
            }
        }
        else if(**p == '[') {
            (*p)++;

            int n = 0;
            while(isdigit(**p)) {
                n = n * 10 + (**p - '0');
                (*p)++;
            }

            node_type->mArrayNum = n;

            if(**p == ']') {
                (*p)++;
            }
            else {
                return NULL;
            }
        }
        else if(**p == '?') {
            (*p)++;
            skip_spaces_for_parse_class_name(p);

            node_type->mNullable = TRUE;
        }
        else if(**p == '*') {
            (*p)++;
            skip_spaces_for_parse_class_name(p);

            node_type->mPointerNum++;
        }
        else if(**p == '>') {
            **p2 = 0;

            node_type->mClass = get_class(buf);

            if(node_type->mClass == NULL) {
                return NULL;
            }

            return node_type;
        }
        else {
            **p2 = **p;

            (*p)++;
            (*p2)++;
        }
    }

    if(*p2 - buf > 0) {
        **p2 = 0;

        node_type->mClass = get_class(buf);

        if(node_type->mClass == NULL) {
            return NULL;
        }
    }

    return node_type;
}

sNodeType* create_node_type_with_class_name(char* class_name)
{
    char buf[VAR_NAME_MAX+1];

    char* p = class_name;
    char* p2 = buf;

    return parse_class_name(&p, &p2, buf);
}

sNodeType* create_node_type_with_class_pointer(sCLClass* klass)
{
    sNodeType* result = alloc_node_type();
    result->mClass = klass;
    return result;
}

BOOL is_number_type(sNodeType* node_type)
{
    return node_type->mClass->mFlags & CLASS_FLAGS_NUMBER;
}

BOOL cast_posibility(sNodeType* left_type, sNodeType* right_type)
{
    if(is_number_type(left_type) && is_number_type(right_type))
    {
        return TRUE;
    }
/*
    else if(left_type->mPointerNum > 0 && right_type->mPointerNum > 0)
    {
        return TRUE;
    }
*/

    return FALSE;
}

BOOL substitution_posibility(sNodeType* left_type, sNodeType* right_type)
{
    sCLClass* left_class = left_type->mClass;
    sCLClass* right_class = right_type->mClass; 

    if(left_class == right_class) {
        if(left_type->mPointerNum == right_type->mPointerNum) 
        {
            return TRUE;
        }
    }

    return FALSE;
}

void solve_generics_for_variable(sNodeType* generics_type, sNodeType** generics_type2, struct sParserInfoStruct* info)
{
    *generics_type2 = generics_type;
}

BOOL type_identify(sNodeType* left, sNodeType* right)
{
    return left->mClass == right->mClass;
}

BOOL type_identify_with_class_name(sNodeType* left, char* right_class_name)
{
    sNodeType* right = create_node_type_with_class_name(right_class_name);

    if(right == NULL) {
        return FALSE;
    }

    return type_identify(left, right);
}
