#ifndef DEMODEL_H
#define DEMODEL_H
# include <math.h>
# include <stdlib.h>
# include <stdio.h>
# include <vector>
# include <string>
using namespace std;

typedef vector<double> Data;

class DeModel
{
public:
    DeModel();
    virtual double eval(Data &x)=0;
    virtual double evalDeriv(Data &x,int pos)=0;
    virtual double evalSecondDeriv(Data &x,int pos)=0;
    virtual void   getModelDeriv(Data &x,Data &g);
    virtual void	getXDeriv(vector<double> xpoint,int pos,vector<double> &g);
    virtual ~DeModel();
};

#endif // DEMODEL_H
