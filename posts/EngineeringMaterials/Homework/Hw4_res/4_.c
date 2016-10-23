#include<stdio.h>
#include<math.h>
int main()
{
	double dat[10];
	double avg = 0;
	double dev = 0;

	for(int i = 0; i < 10; i++){
		scanf("%lf", &dat[i]);
		avg += dat[i];
	}
	avg /= 10;
	printf("average = %lf\n", avg);

	for(int i = 0; i < 10; i++){
		dev += (dat[i] - avg)*(dat[i] - avg)/(9.);
	}
	dev = sqrt(dev);
	printf("dev = %lf\n", dev);

	return 0;
}
