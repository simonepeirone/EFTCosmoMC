# Script that runs the profiler of camb for different choices of parameters

#!/bin/bash

cd ..

make clean
make eftprofile

for file in tests_EFT/parameters/*
do

./eftprofile $file
gprof -b eftprofile > tests_EFT/results/Profile/$(basename "$file")
echo ; echo ; echo ;

done

make clean
rm eftprofile
rm gmon.out