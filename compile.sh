if [ -z $OPTIMUSPATH ]; 
then
	echo "Variable OPTIMUSPATH SHOULD BE SET "
else
	if qmake -v > /dev/null
	then
		(cd PROBLEMS; for file in *.pro; do  qmake $file; make clean; make; done)
		(cd Optimus; qmake; make clean; make install)
		(cd Multistart; qmake; make clean; make install)
		(cd Genetic; qmake; make clean; make install)
		(cd Pso; qmake; make clean; make install)
		(cd Minfinder; qmake; make clean; make install)
		(cd OptimusApp; qmake ; make clean; make)
	else
		echo "qmake is not present;"
	fi
fi