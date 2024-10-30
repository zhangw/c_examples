#include <stdio.h>
#include <string.h>

int main(int argc, char **argv)
{
    char *s1 = "\u4100";
    printf("s1 value:%s, strlen:%lu\n", s1, strlen(s1));
    char *s2 = "䃿";
    printf("s2 value:%s, strlen:%lu\n", s2, strlen(s2));
    int cmp = strcmp(s1, s2);
    printf("s1:%s cmp with s2:%s, result:%d\n", s1, s2, cmp);
    char *s;
    int i = 0;
    do
    {
        s = *(argv + i);
        if (s != NULL)
        {
            size_t l = strlen(s);
            printf("str value:%s, strlen:%lu, bytes:", s, l);
            for (int c = 0; c < l; c++)
            {
                printf("%x ", *(s + c) & 0x000000ff);
            }
            printf("\n");
            i++;
        }
        else
        {
            break;
        }
    } while (1);
    return (0);
}