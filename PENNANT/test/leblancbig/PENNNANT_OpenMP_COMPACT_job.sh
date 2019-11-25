#!/bin/bash

echo "PENNANT Scalibilty testing for OpenMP Compact"

echo "Num of Threads = 1"
OMP_NUM_THREADS=1 ../../build/pennant leblancbig.pnt
echo "========================================="

echo "Num of Threads = 2"
export GOMP_CPU_affinity="0 20"
OMP_NUM_THREADS=2 ../../build/pennant leblancbig.pnt
echo "========================================="

echo "Num of Threads = 4"
export GOMP_CPU_affinity="0 20 1 21"
OMP_NUM_THREADS=4 ../../build/pennant leblancbig.pnt
echo "========================================="

echo "Num of Threads = 8"
export GOMP_CPU_affinity="0 20 1 21 2 22 3 23"
OMP_NUM_THREADS=8 ../../build/pennant leblancbig.pnt
echo "========================================="

echo "Num of Threads = 16"
export GOMP_CPU_affinity="0 20 1 21 2 22 3 23 4 24 5 25 6 26 7 27"
OMP_NUM_THREADS=16 ../../build/pennant leblancbig.pnt
echo "========================================="

echo "Num of Threads = 32"
export GOMP_CPU_affinity="0 20 1 21 2 22 3 23 4 24 5 25 6 26 7 27 10 30 11 31 12 32 13 33 14 34 15 35 16 36 17 37"
OMP_NUM_THREADS=32 ../../build/pennant leblancbig.pnt
echo "========================================="