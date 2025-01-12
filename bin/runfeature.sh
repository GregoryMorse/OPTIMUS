#!/bin/bash
DATAPATH=/home/sheridan/Desktop/ERGASIES/FeatureConstruction2/datasets/tenfolding/
NODES=10

METHOD=DoubleGenetic
METHODPARAMS=""
if [ $METHOD = "Minfinder" ]
then
	METHODPARAMS="--minfinder_samples=25 --minfinder_sampling=repulsion"
elif [ $METHOD = "Genetic" ]
then
	METHODPARAMS="--chromosome_count=500 --max_generations=200 --localsearch_method=grs --localsearch_rate=0.001"

elif [ $METHOD = "Pso" ]
then
	METHODPARAMS="--pso_localsearch_rate=0.00"
elif [ $METHOD = "Multistart" ]
then
	METHODPARAMS=="--multistart_samples=25"
fi

PROBLEM=Feature/libFeature.so
FEATURES=$2

MLPARAMS="--trainName=$DATAPATH/$1.train --testName=$DATAPATH/$1.test --features=$FEATURES"
./OptimusApp --filename=../PROBLEMS/$PROBLEM  --opt_method=$METHOD   $METHODPARAMS  $MLPARAMS --threads=12  --iterations=30
