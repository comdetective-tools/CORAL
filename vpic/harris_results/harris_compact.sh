#!/bin/bash

echo "/usr/bin/time -f \"Elapsed Time , %e, system, %S, user, %U, memory, %M\" ../../../likwid-bin/bin/likwid-pin -c 0 ./harris.Linux --tpp 1"

/usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" ../../../likwid-bin/bin/likwid-pin -c 0 ./harris.Linux --tpp 1

echo "/usr/bin/time -f \"Elapsed Time , %e, system, %S, user, %U, memory, %M\" ../../../likwid-bin/bin/likwid-pin -c 0,20 ./harris.Linux --tpp 2"

/usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" ../../../likwid-bin/bin/likwid-pin -c 0,20 ./harris.Linux --tpp 2

echo "/usr/bin/time -f \"Elapsed Time , %e, system, %S, user, %U, memory, %M\" ../../../likwid-bin/bin/likwid-pin -c 0,20,1,21 ./harris.Linux --tpp 4"

/usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" ../../../likwid-bin/bin/likwid-pin -c 0,20,1,21 ./harris.Linux --tpp 4

echo "/usr/bin/time -f \"Elapsed Time , %e, system, %S, user, %U, memory, %M\" ../../../likwid-bin/bin/likwid-pin -c 0,20,1,21,2,22,3,23 ./harris.Linux --tpp 8"

/usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" ../../../likwid-bin/bin/likwid-pin -c 0,20,1,21,2,22,3,23 ./harris.Linux --tpp 8

echo "/usr/bin/time -f \"Elapsed Time , %e, system, %S, user, %U, memory, %M\" ../../../likwid-bin/bin/likwid-pin -c 0,20,1,21,2,22,3,23,4,24,5,25,6,26,7,27 ./harris.Linux --tpp 16"

/usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" ../../../likwid-bin/bin/likwid-pin -c 0,20,1,21,2,22,3,23,4,24,5,25,6,26,7,27 ./harris.Linux --tpp 16

echo "/usr/bin/time -f \"Elapsed Time , %e, system, %S, user, %U, memory, %M\" ../../../likwid-bin/bin/likwid-pin -c 0,20,1,21,2,22,3,23,4,24,5,25,6,26,7,27,10,30,11,31,12,32,13,33,14,34,15,35,16,36,17,37 ./harris.Linux --tpp 32"

/usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" ../../../likwid-bin/bin/likwid-pin -c 0,20,1,21,2,22,3,23,4,24,5,25,6,26,7,27,10,30,11,31,12,32,13,33,14,34,15,35,16,36,17,37 ./harris.Linux --tpp 32
