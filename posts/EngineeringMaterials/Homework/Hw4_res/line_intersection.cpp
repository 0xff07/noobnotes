#include<cstdio>
#include<cmath>

struct point{
	double x;
	double y;
	point(double _x, double _y):x(_x), y(_y){}
};


int main()
{
	double m = 1.8e11;	
	double x, y;

	point P0(0, 0);
	point P1(0, 0);
	
	double a1 = m;
	double b1 = -1;
	double c1 = 0.002 * m;

	scanf("%lf%lf", &P0.x, &P0.y);
	while(scanf("%lf%lf", &P1.x, &P1.y) != EOF){
		double a2 = P0.x - P1.x;
		double b2 = -1 * (P0.y - P1.y);
		double c2 = a2 * P0.x + b2 * P0.y;

		double D = a1 * b2 - a2 * b1;
		double D_x = c1 * b2 - c2 * b1;
		double D_y = a1 * c2 - a2 * c1;

		x = D_x / D;
		y = D_y / D;

		if(x - P0.x > 0 && x - P0.x < P1.x - P0.x){
			printf("%lf %lf\n", x, y);
		}

		P0.x = P1.x;
		P0.y = P1.y;
	}
	return 0;
}
