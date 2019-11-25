#!/bin/bash

echo "/usr/bin/time -f \"Elapsed Time , %e, system, %S, user, %U, memory, %M\" ../../../likwid-bin/bin/likwid-pin -c 0 ./harris.Linux --tpp 1"

/usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" ../../../likwid-bin/bin/likwid-pin -c 0 ./harris.Linux --tpp 1

echo "/usr/bin/time -f \"Elapsed Time , %e, system, %S, user, %U, memory, %M\" ../../../likwid-bin/bin/likwid-pin -c 0,10 ./harris.Linux --tpp 2"

/usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" ../../../likwid-bin/bin/likwid-pin -c 0,10 ./harris.Linux --tpp 2

echo "/usr/bin/time -f \"Elapsed Time , %e, system, %S, user, %U, memory, %M\" ../../../likwid-bin/bin/likwid-pin -c 0,10,1,11 ./harris.Linux --tpp 4"

/usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" ../../../likwid-bin/bin/likwid-pin -c 0,10,1,11 ./harris.Linux --tpp 4

echo "/usr/bin/time -f \"Elapsed Time , %e, system, %S, user, %U, memory, %M\" ../../../likwid-bin/bin/likwid-pin -c 0,10,1,11,2,12,3,13 ./harris.Linux --tpp 8"

/usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" ../../../likwid-bin/bin/likwid-pin -c 0,10,1,11,2,12,3,13 ./harris.Linux --tpp 8

echo "/usr/bin/time -f \"Elapsed Time , %e, system, %S, user, %U, memory, %M\" ../../../likwid-bin/bin/likwid-pin -c 0,10,1,11,2,12,3,13,4,14,5,15,6,16,7,17 ./harris.Linux --tpp 16"

/usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" ../../../likwid-bin/bin/likwid-pin -c 0,10,1,11,2,12,3,13,4,14,5,15,6,16,7,17 ./harris.Linux --tpp 16

echo "/usr/bin/time -f \"Elapsed Time , %e, system, %S, user, %U, memory, %M\" ../../../likwid-bin/bin/likwid-pin -c 0,10,1,11,2,12,3,13,4,14,5,15,6,16,7,17,8,18,9,19,20,30,21,31,22,32,23,33,24,34,25,35 ./harris.Linux --tpp 32"

/usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" ../../../likwid-bin/bin/likwid-pin -c 0,10,1,11,2,12,3,13,4,14,5,15,6,16,7,17,8,18,9,19,20,30,21,31,22,32,23,33,24,34,25,35 ./harris.Linux --tpp 32
