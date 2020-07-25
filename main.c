#include "tp_pointeurs.h"

int main(void)
{
  int l=2;
  int c=3;
  int **tab=(int **)malloc(2 * sizeof(int *)) ;
  
  for(int i=0; i<2;i++) *(tab+i) = malloc(sizeof(int)*3);
  
 // int tabp[2][2];
  
 // Saisiep(tabp,2,2);
 // Affiche(tabp,2,2);

  Saisie2(tab,2,3);
  Affiche2(tab,2,3);
  return 0;
}
 	
