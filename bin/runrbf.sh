#!/bin/bash
DATAPATH=/home/john/Desktop/ERGASIES/FeatureConstruction2/datasets/tenfolding/
#DATAPATH=/home/sheridan/Desktop/ERGASIES/SECDATA/
NODES=10

METHOD=ParallelDe
METHODPARAMS=""
if [ $METHOD = "Minfinder" ]
then
	METHODPARAMS="--minfinder_samples=25 --minfinder_sampling=repulsion"
elif [ $METHOD = "iPso" ]
then
	METHODPARAMS="--ipso_particles=100 --ipso_localsearch_rate=0.05 --ipso_stoppingrule=best_fitness --ipso_gradientcheck=true --ipso_inertiatype=1 --localsearch_method=adam"
elif [ $METHOD = "Genetic" ]
then
	METHODPARAMS="--max_generations=200 --localsearch_rate=0.00 --localsearch_method=lbfgs"
elif [ $METHOD = "Pso" ]
then
	METHODPARAMS="--pso_localsearch_rate=0.01"
elif [ $METHOD = "ParallelDe" ]
then
	METHODPARAMS="--parde_agents=100 --parde_islands=2"
elif [ $METHOD = "Multistart" ]
then
	METHODPARAMS=="--multistart_samples=25"
fi

PROBLEM=RbfTest
NODES=$2

MLPARAMS="--trainName=$DATAPATH/$1.train --testName=$DATAPATH/$1.test --nodes=$NODES --natoms=$2"
echo ./OptimusApp --filename=../PROBLEMS/RbfTest/libRbfTest.so  --opt_method=$METHOD   $METHODPARAMS  $MLPARAMS --interval_generations=50 --threads=12  --iterations=30
./OptimusApp --filename=../PROBLEMS/libfunctionalRbf.so  --opt_method=$METHOD   $METHODPARAMS  $MLPARAMS --interval_generations=50 --threads=12  --iterations=30

