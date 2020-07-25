#include "tp_pointeurs.h"

void Saisie(int tab[][2], int i, int j)
{
  int l,c;
  for(l=0;l<i;l++)
  {
    for(c=0;c<j;c++)
    {
      printf("tab[%d][%d]= ... \n",l,c);
      scanf("%d",&tab[l][c]);
    }
  }
}

void Affiche(int tab[][2], int i, int j)
{
  int l,c;
  for(l=0;l<i;l++)
  {
    for(c=0;c<j;c++)
    {
      printf("tab[%d][%d]= %d \n",l,c,tab[l][c]);
    }
  }
}

void Saisiep(int *tab, int i, int j)
{
  size_t iter;
  for(iter=0;iter<i*j;iter++)
  {
     scanf("%d",(tab+iter));
  }
}

void Saisie2(int **tab, int i, int j)
{
  int l,c;
  for(l=0;l<i;l++)
  {
    for(c=0;c<j;c++)
    {
      printf("tab[%d][%d]= ... \n",l,c);
      scanf("%d",(*(tab+l))+c);
    }
  }
}


void Affiche2(int **tab, int i, int j)
{
  int l,c;
  for(l=0;l<i;l++)
  {
    for(c=0;c<j;c++)
    {
      printf("tab[%d][%d]= %d \n",l,c,*(*(tab+l))+c);
    }
  }
}


















