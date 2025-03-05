#include <stdio.h>

/*
 * 使用f1...f6代替对二维数组的下标访问
 */
union Floats{
  float floats[3][2];
  struct{
    float f1, f2, f3, f4, f5, f6;
  };
};
int main(int argc, char **argv){
  Floats data;
  data.floats[0][0] = 1.01;
  data.floats[0][1] = 1.02;
  data.floats[1][0] = 1.03;
  data.floats[1][1] = 1.04;
  data.floats[2][0] = 1.05;
  data.floats[2][1] = 1.06;
  printf("%f\n", data.f1);
  printf("%f\n", data.f2);
  printf("%f\n", data.f3);
  printf("%f\n", data.f4);
  printf("%f\n", data.f5);
  printf("%f\n", data.f6);
}
