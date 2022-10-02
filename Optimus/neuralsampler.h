#ifndef NEURALSAMPLER_H
#define NEURALSAMPLER_H

#include "problemsampler.h"
# include "dataset.h"
class NeuralSampler : public ProblemSampler
{
private:
    Data weight;
    Dataset *dataset;
public:
    NeuralSampler(Problem *p,int w);
    int     getNWeights() const;
    Data    getWeights();
    void    setWeights(Data &w);
    double  eval(Data &x);
    Data    evalDeriv(Data &x);
    void    sampleFromProblem(int N,Matrix &xsample,Data &ysample);
    void    trainModel();
    double  getTrainError();
    void    sampleFromModel(int &N,Matrix &xsample,Data &ysample);
    ~NeuralSampler();
};

#endif // NEURALSAMPLER_H
