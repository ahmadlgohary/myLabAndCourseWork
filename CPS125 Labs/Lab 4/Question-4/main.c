#include <stdio.h>

int main(void) {
  double n;
  printf("Please enter The earthquakes Richter scale number\n");
  scanf("%lf", &n);
if (n<5) {
printf("the earthquake will do Little or no damage\n");
}
else if (n>=5 && 5.5>n) {
printf("the earthquake will do Some damage\n");}
else if (n>=5.5 && 6.5>n) {
printf("the earthquake will do Serious damage: Walls may crack or fall\n");}
else if (n>=6.5 && 7.5>n) {
printf("the earthquake will be a Disaster: Houses and buildings may collapse\n");}
else if (n>=7.5) {
printf("the earthquake will be Catastrophe: Most buildings destroyed\n");
}
  return 0;
}
/*no the switch statement will not work because there is a range for the numbers as where the switch statment works best when the values are defined without a range*/