#include "common.h"

sClassTable* gHeadClassTable = NULL;
static sClassTable gClassTable[CLASS_NUM_MAX];

unsigned int get_hash_key(char* name, unsigned int max)
{
    unsigned int result = 0;
    char* p = name;
    while(*p) {
        result += *p;
        p++;
    }

    return result % max;
}

static void free_class(sCLClass* klass)
{
    free(klass->mConst.mConst);
    free(klass);
}

static void remove_class(char* class_name)
{
    unsigned int hash_key = get_hash_key(class_name, CLASS_NUM_MAX);
    sClassTable* table = gClassTable;
    sClassTable** head_table = &gHeadClassTable;

    sClassTable* p = table + hash_key;

    while(1) {
        if(p->mName == NULL) {
            break;
        }
        else if(strcmp(p->mName, class_name) == 0) {
            /// remove from liked list ///
            sClassTable* p2 = *head_table;
            sClassTable* p2_before = p2;

            while(p2) {
                if(p2->mItem == p->mItem) {
                    if(p2_before == *head_table) {
                        *head_table = p2->mNextClass;
                    }
                    else {
                        p2_before->mNextClass = p2->mNextClass;
                    }
                    break;
                }

                p2_before = p2;
                p2 = p2->mNextClass;
            }

            /// remove found class ///
            free(p->mName);
            free_class(p->mItem);

            p->mName = NULL;
            p->mItem = NULL;
            break;
        }
        else {
            p++;

            if(p == table + CLASS_NUM_MAX) {
                p = table;
            }
            else if(p == table + hash_key) {
                break;
            }
        }
    }
}

static BOOL put_class_to_table(char* class_name, sCLClass* klass)
{
    remove_class(class_name);

    sClassTable* table = gClassTable;
    sClassTable** head_table = &gHeadClassTable;

    unsigned int hash_key = get_hash_key(class_name, CLASS_NUM_MAX);
    sClassTable* p = table + hash_key;

    while(1) {
        if(p->mName == NULL) {
            p->mName = xstrdup(class_name);
            p->mItem = klass;

            p->mNextClass = *head_table;
            *head_table = p;
            break;
        }
        else {
            p++;

            if(p == table + CLASS_NUM_MAX) {
                p = table;
            }
            else if(p == table + hash_key) {
                return FALSE;
            }
        }
    }

    return TRUE;
}

static BOOL search_for_class_file(char* class_name, char* class_file_name, size_t class_file_name_size, int version)
{
    char extname[PATH_MAX];

    snprintf(extname, PATH_MAX, ".ncl");

    if(version == 0) {
        /// current working directory ///
        char* cwd = getenv("PWD");

        if(cwd) {
            snprintf(class_file_name, class_file_name_size, "%s/%s%s", cwd, class_name, extname);

            if(access(class_file_name, F_OK) == 0) {
                return TRUE;
            }
        }

        /// system shared directory ///
        snprintf(class_file_name, class_file_name_size, "%s/share/neo-c/%s%s", PREFIX, class_name, extname);

        if(access(class_file_name, F_OK) == 0) {
            return TRUE;
        }
    }
    else {
        /// current working directory ///
        char* cwd = getenv("PWD");

        if(cwd) {
            snprintf(class_file_name, class_file_name_size, "%s/%s@%d%s", cwd, class_name, version, extname);

            if(access(class_file_name, F_OK) == 0) {
                return TRUE;
            }
        }

        /// system shared directory ///
        snprintf(class_file_name, class_file_name_size, "%s/share/neo-c/%s@%d%s", PREFIX, class_name, version, extname);

        if(access(class_file_name, F_OK) == 0) {
            return TRUE;
        }
    }

    return FALSE;
}

void read_from_file(char** p, void* buf, size_t size, char* head)
{
    memcpy(buf, *p, size);

    (*p) += size;

    alignment_pointer(p, head);
}

void read_char_from_file(char** p, char* c)
{
    *c = **p;
    (*p)++;
}

void read_int_from_file(char** p, int* n)
{
    *n = *(int*)(*p);
    (*p) += sizeof(int);
}

void read_long_from_file(char** p, clint64* n)
{
    *n = *(clint64*)(*p);
    (*p) +=sizeof(clint64);
}

void read_const_from_file(char** p, sConst* constant, char* head)
{
    int len;
    read_int_from_file(p, &len);

    sConst_init_with_size(constant, len+1);
    constant->mLen = len;

    read_from_file(p, constant->mConst, len, head);
}

static sCLClass* read_class_from_file(char* class_name, char** p, char* head)
{
    sCLClass* klass = xcalloc(1, sizeof(sCLClass));

    read_const_from_file(p, &klass->mConst, head);

    int n;
    read_int_from_file(p, &n);
    klass->mClassNameOffset = n;

    return klass;
}

static sCLClass* load_class_from_class_file(char* class_name, char* class_file_name)
{
    sBuf buf;
    if(!read_source(class_file_name, &buf)) {
        return NULL;
    }

    char* p = buf.mBuf;

    /// check magic number. Is this Clover object file? ///
    char c;

    if(*p != 11) { return NULL; }
    p++;
    if(*p != 12) { return NULL; }
    p++;
    if(*p != 34) { return NULL; }
    p++;
    if(*p != 55) { return NULL; }
    p++;
    if(*p != 'N') { return NULL; }
    p++;
    if(*p != 'E') { return NULL; }
    p++;
    if(*p != 'O') { return NULL; }
    p++;
    if(*p != 'C') { return NULL; }
    p++;

    alignment_pointer(&p, buf.mBuf);

    sCLClass* klass = read_class_from_file(class_name, &p, buf.mBuf);

    if(klass == NULL) {
        fprintf(stderr, "Clover2 can't load class %s because of class file\n", class_name);
        return NULL;
    }

    if(!put_class_to_table(class_name, klass)) {
        fprintf(stderr, "overflow class number\n");
        exit(1);
    }

    return klass;
}

static sCLClass* load_class(char* class_name, int version)
{
    char class_file_name[PATH_MAX+1];
    if(!search_for_class_file(class_name, class_file_name, PATH_MAX, version)) {
        return NULL;
    }

    sCLClass* result = load_class_from_class_file(class_name, class_file_name);

    return result;
}

sCLClass* get_class(char* class_name)
{
    unsigned int hash_key = get_hash_key(class_name, CLASS_NUM_MAX);
    sClassTable* table = gClassTable;
    sClassTable* p = table + hash_key;

    while(1) {
        if(p->mName) {
            if(strcmp(p->mName, class_name) == 0) {
                sCLClass* result = p->mItem;
                return result;
            }
            else {
                p++;

                if(p == table + CLASS_NUM_MAX) {
                    p = table;
                }
                else if(p == table + hash_key) {
                    break;
                }
            }
        }
        else {
            break;
        }
    }

    return load_class(class_name, 0);
}

sCLClass* alloc_class(char* class_name, BOOL primitive_, BOOL struct_, BOOL number_type, BOOL unsigned_number)
{
    sCLClass* klass = xcalloc(1, sizeof(sCLClass));

    sConst_init(&klass->mConst);

    klass->mFlags |= (primitive_ ? CLASS_FLAGS_PRIMITIVE:0) | (struct_ ? CLASS_FLAGS_STRUCT:0) | (number_type ? CLASS_FLAGS_NUMBER:0) | (unsigned_number ? CLASS_FLAGS_UNSIGNED_NUMBER:0);

    klass->mClassNameOffset = append_str_to_constant_pool(&klass->mConst, class_name, FALSE);

    if(!put_class_to_table(class_name, klass)) {
        fprintf(stderr, "overflow class number\n");
        exit(1);
    }

    return klass;
}

sCLClass* alloc_struct(char* class_name, int num_fields, char field_name[STRUCT_FIELD_MAX][VAR_NAME_MAX], struct sNodeTypeStruct* fields[STRUCT_FIELD_MAX])
{
    sCLClass* klass = alloc_class(class_name, FALSE, TRUE, FALSE, FALSE);
    klass->mNumFields = num_fields;

    int i;
    for(i=0; i<num_fields; i++) {
        klass->mFieldNameOffsets[i] = append_str_to_constant_pool(&klass->mConst, field_name[i], FALSE);
        klass->mFields[i] = fields[i];
    }

    return klass;
}


void class_init()
{
    memset(gClassTable, 0, sizeof(sClassTable)*CLASS_NUM_MAX);

    alloc_class("bool", TRUE, FALSE, TRUE, FALSE);
    alloc_class("char", TRUE, FALSE, TRUE, FALSE);
    alloc_class("short", TRUE, FALSE, TRUE, FALSE);
    alloc_class("int", TRUE, FALSE, TRUE, FALSE);
    alloc_class("long", TRUE, FALSE, TRUE, FALSE);
    alloc_class("uchar", TRUE, FALSE, TRUE, TRUE);
    alloc_class("ushort", TRUE, FALSE, TRUE, TRUE);
    alloc_class("uint", TRUE, FALSE, TRUE, TRUE);
    alloc_class("ulong", TRUE, FALSE, TRUE, TRUE);
    alloc_class("void", TRUE, FALSE, FALSE, FALSE);
    alloc_class("any", TRUE, FALSE, FALSE, FALSE);
}

void class_final()
{
    sClassTable* p = gHeadClassTable;

    while(p) {
        if(p->mFreed == FALSE) {
            sClassTable* p2 = gHeadClassTable;
            while(p2) {
                if(p->mItem == p2->mItem) {   // typedef class
                    p2->mFreed = TRUE;
                }
                p2 = p2->mNextClass;
            }
            free_class(p->mItem);
            free(p->mName);
        }
        else {
            free(p->mName);
        }
        p = p->mNextClass;
    }
}

int get_field_index(sCLClass* klass, char* var_name)
{
    if(klass->mFlags & CLASS_FLAGS_STRUCT) {
        int i;
        for(i=0; i<klass->mNumFields; i++) {
            char* field_name = CONS_str(&klass->mConst, klass->mFieldNameOffsets[i]);

            if(strcmp(field_name, var_name) == 0) {
                return i;
            }
        }
    }

    return -1;
}

