ITER=5000
#rm Results/VTest*
#rm Results/ATest*

# once for GCC
echo "n,time" > Results/VTestO0.txt
echo "n,time" > Results/ATestO0.txt
echo "n,time" > Results/VTestO1.txt
echo "n,time" > Results/ATestO1.txt
echo "n,time" > Results/VTestO2.txt
echo "n,time" > Results/ATestO2.txt
echo "n,time" > Results/VTestO3.txt
echo "n,time" > Results/ATestO3.txt

make -B CPP_FLAGS=-O0

for S in `seq 1 64`; do
	echo -n $S >> Results/VTestO0.txt
	echo -n $S >> Results/ATestO0.txt
	./BasicTest V $S $ITER  >> Results/VTestO0.txt
	./BasicTest A $S $ITER  >> Results/ATestO0.txt
done

make -B CPP_FLAGS=-O1

for S in `seq 1 64`; do
	echo -n $S >> Results/VTestO1.txt
	echo -n $S >> Results/ATestO1.txt
	./BasicTest V $S $ITER  >> Results/VTestO1.txt
	./BasicTest A $S $ITER  >> Results/ATestO1.txt
done
make -B CPP_FLAGS=-O2

for S in `seq 1 64`; do
	echo -n $S >> Results/VTestO2.txt
	echo -n $S >> Results/ATestO2.txt
	./BasicTest V $S $ITER  >> Results/VTestO2.txt
	./BasicTest A $S $ITER  >> Results/ATestO2.txt
done

make -B CPP_FLAGS=-O3

for S in `seq 1 64`; do
	echo -n $S >> Results/VTestO3.txt
	echo -n $S >> Results/ATestO3.txt
	./BasicTest V $S $ITER  >> Results/VTestO3.txt
	./BasicTest A $S $ITER  >> Results/ATestO3.txt
done

#once for Clang
#echo "n,time" > Results/VCTestO0.txt
#echo "n,time" > Results/ACTestO0.txt
#echo "n,time" > Results/VCTestO1.txt
#echo "n,time" > Results/ACTestO1.txt
#echo "n,time" > Results/VCTestO2.txt
#echo "n,time" > Results/ACTestO2.txt
#echo "n,time" > Results/VCTestO3.txt
#echo "n,time" > Results/ACTestO3.txt
#echo "n,time" > Results/VCTestOfast.txt
#echo "n,time" > Results/ACTestOfast.txt
#
#make -B CPP_FLAGS=-O0 CXX=clang++-3.8
#
#for S in `seq 1 64`; do
#	echo -n "$S "
#	echo -n $S >> Results/VCTestO0.txt
#	echo -n $S >> Results/ACTestO0.txt
#	./BasicTest V $S $ITER  >> Results/VCTestO0.txt
#	echo $S
#	./BasicTest A $S $ITER  >> Results/ACTestO0.txt
#done
#
#make -B CPP_FLAGS=-O1 CXX=clang++-3.8
#
#for S in `seq 1 64`; do
#	echo -n "$S "
#	echo -n $S >> Results/VCTestO1.txt
#	echo -n $S >> Results/ACTestO1.txt
#	./BasicTest V $S $ITER  >> Results/VCTestO1.txt
#	echo $S
#	./BasicTest A $S $ITER  >> Results/ACTestO1.txt
#done
#make -B CPP_FLAGS=-O2 CXX=clang++-3.8
#
#for S in `seq 1 64`; do
#	echo -n "$S "
#	echo -n $S >> Results/VCTestO2.txt
#	echo -n $S >> Results/ACTestO2.txt
#	./BasicTest V $S $ITER  >> Results/VCTestO2.txt
#	echo $S
#	./BasicTest A $S $ITER  >> Results/ACTestO2.txt
#done
#
#make -B CPP_FLAGS=-O3 CXX=clang++-3.8
#
#for S in `seq 1 64`; do
#	echo -n "$S "
#	echo -n $S >> Results/VCTestO3.txt
#	echo -n $S >> Results/ACTestO3.txt
#	./BasicTest V $S $ITER  >> Results/VCTestO3.txt
#	echo $S
#	./BasicTest A $S $ITER  >> Results/ACTestO3.txt
#done
#
#make -B CPP_FLAGS=-Ofast CXX=clang++-3.8
#
#for S in `seq 1 64`; do
#	echo -n "$S "
#	echo -n $S >> Results/VCTestOfast.txt
#	echo -n $S >> Results/ACTestOfast.txt
#	./BasicTest V $S $ITER  >> Results/VCTestOfast.txt
#	echo $S
#	./BasicTest A $S $ITER  >> Results/ACTestOfast.txt
#done
