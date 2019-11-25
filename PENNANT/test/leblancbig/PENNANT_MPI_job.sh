#!/bin/bash

echo "PENNANT Scalibilty testing for MPI"

echo "Num of Processes = 1"
OMP_NUM_THREADS=1 mpirun -np 1 ../../build/pennant leblancbig.pnt
echo "========================================="

echo "Num of Processes = 2"
OMP_NUM_THREADS=1 mpirun -np 2 ../../build/pennant leblancbig.pnt
echo "========================================="

echo "Num of Processes = 4"
OMP_NUM_THREADS=1 mpirun -np 4 ../../build/pennant leblancbig.pnt
echo "========================================="

echo "Num of Processes = 8"
OMP_NUM_THREADS=1 mpirun -np 8 ../../build/pennant leblancbig.pnt
echo "========================================="

echo "Num of Processes = 16"
OMP_NUM_THREADS=1 mpirun -np 16 ../../build/pennant leblancbig.pnt
echo "========================================="

echo "Num of Processes = 32"
OMP_NUM_THREADS=1 mpirun -np 32 ../../build/pennant leblancbig.pnt
echo "========================================="