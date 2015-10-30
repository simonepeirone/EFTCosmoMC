#!/bin/bash

cd ..

rm cosmomc
rm getdist

make clean
make all
make clean