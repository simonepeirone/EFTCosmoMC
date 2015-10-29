# Script that runs the stability sampler for some models in EFTCAMB

#!/bin/bash

cd ..

make clean
make eftstability

./eftstability tests_EFT/results/Stability_Results

make clean
rm eftstability
