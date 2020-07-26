#include "../header/tp_bit_fichier_file.h"

int bitcount(int n)
{
	int bitcount=0;
	while(n!=0)
	{
		if ((n & 0x1)==0x1)  bitcount++;
		n=n>>1;
	}
	return bitcount;
}
