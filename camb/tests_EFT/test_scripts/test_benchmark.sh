# Script that runs the benchmark of camb with different parameters

#!/bin/bash

cd ..

make clean
make eftbenchmark

echo

for file in tests_EFT/parameters/*

do
./eftbenchmark $file | tee -a tests_EFT/results/Benchmark_Results/benchmark.log
echo ; 

done


make clean
rm eftbenchmark