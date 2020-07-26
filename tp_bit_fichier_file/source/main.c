#include "../header/tp_bit_fichier_file.h"

int main(int argc, char **argv)
{
	printf("%d\n",2<<1);
	
	unsigned int a=0x12340000,b=0x0;
	unsigned int c = ((~b)<<16) | (a>>16);
	printf("c=%#010x\n",c);

	if(((0x200 & a) & (0x200 & b)) == 0x200)
		printf("bit_10_a==bit_10_b\n");
	else
		printf("bit_10_a!=bit_10_b\n");
	
	int nbit=bitcount(0xfff);
	printf("bitcount(0x200)=%d\n",nbit);
	return 0;
}
