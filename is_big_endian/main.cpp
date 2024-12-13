#include <stdio.h>
/*
 * 将int转为char类型，根据低地址存放的内容判断
 */
bool is_big_endian()
{
  int a = 0x1024;
  char b = *(char*)&a;
  if(b == 0x10){
    return true;
  }
  return false;
}

/*
 * union存放成员时，都是从低地址开始的，根据低地址存放的内容判读
 */
bool is_big_endian_by_union()
{
  union Num{
    int a;
    char b;
  }num;
  num.a = 0x1234;
  if(num.b == 0x12){
    return true;
  }
  return false;
}
int main(int argc, char **argv)
{
  printf("test is_big_endian():\n");
  if(is_big_endian()){
    printf("big endian architecture");
  }else{
    printf("little endian architecture\n");
  }
  printf("test is_big_endian_by_union():\n");
  if(is_big_endian_by_union()){
    printf("big endian architecture");
  }else{
    printf("little endian architecture\n"); 
  }
}
