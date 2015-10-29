# Script that runs camb with all the parameters in the tests_EFT/parameters/ folder

#!/bin/bash

cd ..

make clean
make


for file in tests_EFT/parameters/*
do

./camb $file | tee -a tests_EFT/results/Spectra_results/spectra.log
echo ; echo ; echo ;

done

make clean
rm camb

