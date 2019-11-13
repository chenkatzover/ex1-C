#include "myMath.h"
#include <stdio.h>

int main(){
	double x;
	printf("please insert a real number");
	scanf( "%lf",&x);
	double a=Exp(x);
	double b=Pow(x,3);
	double c=add(a,b);
	double d=sub(c,2);
	printf("the value of f(x)=e^x+x^3-2 at the point %f is %f\n",x,d);
	
	double g=mul(x,3);
	double h=add(g,Pow(mul(x,2),2));
	printf(	"the value of f(x)=3x+2x^2 at the point %f is %f\n",x,h);		 
	double i=div(Pow(mul(x,4),3),5);
	double j=sub(i,mul(2,x));
	printf(	"the value of f(x)=(4x^3)/5-2x at the point %f is %f\n",x,j);
	
	
	
	
	
	
	
	
	
	
	return 0;
}