#include<stdio.h>
#include<math.h>

int main()
{
	double x = 0;
	double y = erf(0);
	double dx = 0.0001;
	for(int i = 0; i < 50000;i++, x += dx){
		y += erf(x) * dx;
		printf("%lf %lf\n", x, erf(x));
	}


	return 0;
}
