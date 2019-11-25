#!/bin/bash

echo "PENNANT Scalibilty testing for OpenMP Scatter"

echo "Num of Threads = 1"
OMP_NUM_THREADS=1 ../../build/pennant leblancbig.pnt
echo "========================================="

echo "Num of Threads = 2"
export GOMP_CPU_affinity="0 10"
OMP_NUM_THREADS=2 ../../build/pennant leblancbig.pnt
echo "========================================="

echo "Num of Threads = 4"
export GOMP_CPU_affinity="0 10 1 11"
OMP_NUM_THREADS=4 ../../build/pennant leblancbig.pnt
echo "========================================="

echo "Num of Threads = 8"
export GOMP_CPU_affinity="0 10 1 11 2 12 3 13"
OMP_NUM_THREADS=8 ../../build/pennant leblancbig.pnt
echo "========================================="

echo "Num of Threads = 16"
export GOMP_CPU_affinity="0 10 1 11 2 12 3 13 4 14 5 15 6 16 7 17"
OMP_NUM_THREADS=16 ../../build/pennant leblancbig.pnt
echo "========================================="

echo "Num of Threads = 32"
export GOMP_CPU_affinity="0 10 1 11 2 12 3 13 4 14 5 15 6 16 7 17 20 30 21 31 22 32 23 33 24 34 25 35 26 36 27 37"
OMP_NUM_THREADS=32 ../../build/pennant leblancbig.pnt
echo "========================================="