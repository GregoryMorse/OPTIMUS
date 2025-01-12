#include "nncmodel.h"

NncModel::NncModel(DataSet *tr,DataSet *tt)
    :DataModel(tr,tt)
{
	printf("tr = %x \n",tr);
    dimension = tr->getdimension();
    printf("Dimension %d \n",dimension);
    program = new NeuralProgram();
    program->setDimension(dimension);
}

double  NncModel::eval(Data &x)
{
    if(lastError) return 1e+10;
    return program->neuralparser->eval(x);
}
static double nmax(double a,double b){return a>b?a:b;}

double  NncModel::evalDeriv(Data &x,int pos)
{
    if(lastError) return 1e+10;

    return program->neuralparser->evalDeriv(x,pos);
}

double NncModel::evalSecondDeriv(Data &x,int pos)
{
    if(lastError) return 1e+10;

    return program->neuralparser->evalDeriv2(x,pos);
}

void    NncModel::setChromosome(vector<int> &g)
{
  if(fabs(   program->fitness(g))>=1e+8) lastError = true;
  else lastError = false;
}

NncModel::~NncModel()
{
    delete program;
}
