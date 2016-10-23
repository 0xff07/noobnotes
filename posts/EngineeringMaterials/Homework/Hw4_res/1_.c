#include<stdio.h>
#include<math.h>

int main()
{
	double load, length;
	double A0 = 4.8e-3 * 15.9e-3;
	double L0 = 75;
	while(scanf("%lf%lf", &load, &length)!= EOF)
	   	printf("%lf %lf\n", (length - L0)/L0, load / A0);	

	return 0;
}
