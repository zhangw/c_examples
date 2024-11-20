#include<stdio.h>
int is_big_endian(){
	int a = 0x01020304;
	//cast a to char 
	printf("integer value: %s\n", "0x01020304");
	const unsigned char * const p = (unsigned char *)&a;
	for(int i=0;i<sizeof(a);i++){
		printf("addr:%p, hex:%02X\n", p+i, *(p+i));
	}
	unsigned char *a1 = (unsigned char *)&a;
	if(*a1 == 0x04){
		printf("little endian!\n");
		return 1;
	}
	printf("big endian!\n");
	return 0;
}
int main(int argc, char **argv){
	is_big_endian();
}
