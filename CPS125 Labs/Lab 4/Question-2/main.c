#include <stdio.h>

int main(void) {
  double a1, a2, t1, t2, ave;
  char Grade, A, B, C, D, F;
  printf("Please enter your 2 assigment marks\n");
  scanf("%lf" "%lf", &a1, &a2);
  printf("Please enter your 2 test marks\n");
  scanf("%lf" "%lf", &t1, &t2);
ave= (t1+t2+a1+a2)/4.0;
printf("your average is %lf\n", ave);
if (t1 || t2 < 50) {Grade = 'F';}
else 
if (ave>80) {
Grade = 'A';
}
else
if (ave>70) {
Grade = 'B';}
else
if (ave>60) {
Grade = 'C';}
else
if (ave>50) {
Grade = 'D';}
else Grade = 'F';
printf("your grade is %c", Grade);

  return 0;
}