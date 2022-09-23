# include <math.h>
# include <stdio.h>
/*	This is a sample file for systems of ODE's,
 *	written in C++. The meaning of the functions is 
 *	as follows:
 *		1. getx0():  Return the left boundary of the equation.
 *		2. getx1():  Return the right boundary of the equation.
 *		3. getnode():Return the amount of the equations.
 *		4. getnpoints(): Return the number points in which the system
 *				will try to solve the ODE.
 *		5. systemfun(node,x,y,yy): Return the system of equations to 
 *				be solved. In parameter y we put the value of y's
 *				and in the table yy the value of the derivatives of y's.
 *		6. systemf0(node, f0): It returns in table f0 the left boundaries of 
 *				the equations.
 * */
extern "C"
{

double	getx0()
{
	return 0.0;
}

double	getx1()
{
	return 10.0;
}

int	getnode()
{
	return 3;
}

int	getnpoints()
{
	return 50;
}

void	systemfun(int node, double x, double *y, double *yy,double *res)
{
	double p1,p2,p3;
	p1=yy[0]+0.04*y[0]-1e+4 * y[1]*y[2];	
	p2=yy[1]-0.04*y[0]+1e+4*y[1]*y[2]+3*1e+7*y[1]*y[1];
	p3=yy[2]-3*1e+7*y[1]*y[1];
	res[0]=p1;
	res[1]=p2;
	res[2]=p3;
}

void	systemf0(int node,double *f0)
{
	f0[0]=1;
	f0[1]=0;
	f0[2]=0;
}

}
