if [ -z $OPTIMUSPATH ]; 
then
	echo "Variable OPTIMUSPATH SHOULD BE SET "
else
	if qmake -v > /dev/null
	then
		methods=("Optimus" "Bfgs" "IntegerGenetic" "Genetic" "DoubleGenetic" "MinCenter" "Tmlsl" "GENDE" "GCRS" "DE" "Genmin" "Price" "Multistart" "Pso" "iPso" "PSearch" "Minfinder" "DAdam" "Search" "NeuralMinimizer" )
		problems=("Feature" "GenClass" "DGenclass" "NNC" "RbfTest" "DiffEq")
		(cd PROBLEMS; for file in *.pro; do  qmake $file;  make; done)
		(cd PROBLEMS/Feature; for file in *.pro; do  qmake $file;  make; done)
		(cd PROBLEMS/GenClass; for file in *.pro; do  qmake $file;  make; done)
		(cd PROBLEMS/DGenclass; for file in *.pro; do  qmake $file;  make; done)
		(cd PROBLEMS/NNC; for file in *.pro; do  qmake $file;  make; done)
		(cd PROBLEMS/RbfTest; for file in *.pro; do  qmake $file;  make; done)
		(cd PROBLEMS/DataFitting; for file in *.pro; do  qmake $file;  make; done)
		for str in ${methods[@]}; do
			(cd $str; qmake;  make install )
		done
		(cd bin; qmake ;  make)
		(cd bin/OptimusFit; qmake; make)
	else
		echo "qmake is not present;"
	fi
fi
