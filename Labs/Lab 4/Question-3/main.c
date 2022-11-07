#include <stdio.h>

int main(void) {
  char name, S, s, C, c, D, d, F, f, A, a;
  printf("Enter ship letter\n");
  scanf("%c",&name);
  switch (name)
  {
  case 'S':
  printf("Submarine");
  break;
  case 's':
  printf("Submarine");
  break;
  case 'D':
  printf("Destroyer");
  break;
  case 'd':
  printf("Destroyer");
  break;
  case 'c':
  printf("Cruiser");
  break;
  case 'C':
  printf("Cruiser");
  break;
  case 'A':
  printf("Aircraft Carrier");
  break;
  case 'a':
  printf("Aircraft Carrier");
  break;
  case 'F':
  printf("Frigate");
  break;
  case 'f':
  printf("Frigate");
  break;
  default:
  printf("Error! Ship is unknown");
  }
  return 0;
}