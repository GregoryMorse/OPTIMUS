if [ -z $OPTIMUSPATH ]; 
then
	echo "Variable OPTIMUSPATH SHOULD BE SET "
else
	if qmake -v > /dev/null
	then
		(cd PROBLEMS; for file in *.pro; do  qmake $file; make clean;done)
		(cd PROBLEMS/DeRBF; qmake ; make clean)
		(cd PROBLEMS/DGenClass; qmake; make clean)
		(cd PROBLEMS/DiffEq; qmake; make clean)
		(cd PROBLEMS/Feature; qmake; make clean)
		(cd PROBLEMS/GenClass; qmake; make clean)
		(cd PROBLEMS/NNC; qmake; make clean)
		(cd PROBLEMS/RbfTest; qmake; make clean)
		(cd Optimus; qmake; make clean;)
		(cd GCRS; qmake ; make clean )
		(cd Genmin; qmake ; make clean )
		(cd Price; qmake ; make clean )
		(cd MinCenter; qmake; make clean )
		(cd GENDE; qmake; make clean )
		(cd Tmlsl; qmake; make clean )
		(cd Multistart; qmake; make clean)
		(cd IntervalMethod; qmake; make clean)
		(cd Genetic; qmake; make clean)
		(cd Pso; qmake; make clean)
		(cd iPso; qmake; make clean)
		(cd DE; qmake ; make clean )
		(cd PSearch; qmake; make clean)
		(cd Minfinder; qmake; make clean)
		(cd DAdam; qmake; make clean)
		(cd Search; qmake; make clean)
		(cd bin; qmake ; make clean)
		(cd bin; rm -f OptimusApp)
		(cd lib; rm -f lib*)
	else
		echo "qmake is not present;"
	fi
fi
