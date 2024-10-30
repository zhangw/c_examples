#include <stdio.h>
#include <stddef.h>

struct my_sub_struct {
        const char *sub_name;
        int flag;
};
struct my_struct {
        struct my_sub_struct            *sub;
        const char                      *name;
        size_t                          sizeof_message;
        unsigned                        n_fields;
};

void dump_sz(struct my_struct* ms){
    printf("sizeof my_struct:%lu, addr:%p\n", sizeof(ms), ms);
    printf("sizeof my_struct sub:%lu, addr:%p\n", sizeof(ms->sub), &ms->sub);
    printf("  sizeof my_struct sub/sub_name:%lu, addr:%p\n", sizeof(ms->sub->sub_name), &ms->sub->sub_name);
    printf("  sizeof my_struct sub/flag:%lu, addr:%p\n", sizeof(ms->sub->flag), &ms->sub->flag);
    printf("sizeof my_struct name:%lu, addr:%p\n", sizeof(ms->name), &ms->name);
    printf("sizeof my_struct sizeof_message:%lu, addr:%p\n", sizeof(ms->sizeof_message), &ms->sizeof_message);
    printf("sizeof my_struct n_fields:%lu, addr:%p\n", sizeof(ms->n_fields), &ms->n_fields);
}

void dump_offset() {
    printf("my_sub_struct->sub offset:%lu\n", offsetof(struct my_struct, sub));
    printf("  my_sub_struct->sub->sub_name offset:%lu\n", offsetof(struct my_sub_struct, sub_name));
    printf("  my_sub_struct->sub->flag offset:%lu\n", offsetof(struct my_sub_struct, flag));
    printf("my_sub_struct->name offset:%lu\n", offsetof(struct my_struct, name));
    printf("my_sub_struct->sizeof_message offset:%lu\n", offsetof(struct my_struct, sizeof_message));
    printf("my_sub_struct->n_fields offset:%lu\n", offsetof(struct my_struct, n_fields));
}

int main()
{
    struct my_struct ms;
    struct my_sub_struct ss;
    ss.sub_name = "hi";
    ss.flag = 1;
    ms.sub = &ss;
    ms.name = "hello world";
    ms.sizeof_message = sizeof("1000000000000000");
    ms.n_fields = 1024;
    dump_sz(&ms);
    dump_offset();
    return 0;
}
