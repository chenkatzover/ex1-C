#include "myMath.h"
double Pow(double x,int y){
	double sum=1;
	for(int i=1;i<=y;i++){
		sum=sum*x;
	}
	return sum;	
}

double Exp(int x){
	double e=2.71828;
	return Pow(e,x);
}
	