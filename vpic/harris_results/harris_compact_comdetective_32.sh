#!/bin/bash

echo "LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f \"Elapsed Time , \%e, system, \%S, user, \%U, memory, \%M\" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS\@500000 -e MEM_UOPS_RETIRED:ALL_STORES\@500000 --mapping 0,20,1,21,2,22,3,23,4,24,5,25,6,26,7,27,10,30,11,31,12,32,13,33,14,34,15,35,16,36,17,37 mpirun -np 1 ./harris.Linux --tpp 32"

LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS@500000 -e MEM_UOPS_RETIRED:ALL_STORES@500000 --mapping 0,20,1,21,2,22,3,23,4,24,5,25,6,26,7,27,10,30,11,31,12,32,13,33,14,34,15,35,16,36,17,37 mpirun -np 1 ./harris.Linux --tpp 32

rm -r harris_32_compact_thread_data1
mkdir harris_32_compact_thread_data1
mv *.csv harris_32_compact_thread_data1
mv *ranking.txt harris_32_compact_thread_data1

echo "LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f \"Elapsed Time , \%e, system, \%S, user, \%U, memory, \%M\" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS\@500000 -e MEM_UOPS_RETIRED:ALL_STORES\@500000 --mapping 0,20,1,21,2,22,3,23,4,24,5,25,6,26,7,27,10,30,11,31,12,32,13,33,14,34,15,35,16,36,17,37 mpirun -np 1 ./harris.Linux --tpp 32"

LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS@500000 -e MEM_UOPS_RETIRED:ALL_STORES@500000 --mapping 0,20,1,21,2,22,3,23,4,24,5,25,6,26,7,27,10,30,11,31,12,32,13,33,14,34,15,35,16,36,17,37 mpirun -np 1 ./harris.Linux --tpp 32

rm -r harris_32_compact_thread_data2
mkdir harris_32_compact_thread_data2
mv *.csv harris_32_compact_thread_data2
mv *ranking.txt harris_32_compact_thread_data2

echo "LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f \"Elapsed Time , \%e, system, \%S, user, \%U, memory, \%M\" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS\@500000 -e MEM_UOPS_RETIRED:ALL_STORES\@500000 --mapping 0,20,1,21,2,22,3,23,4,24,5,25,6,26,7,27,10,30,11,31,12,32,13,33,14,34,15,35,16,36,17,37 mpirun -np 1 ./harris.Linux --tpp 32"

LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS@500000 -e MEM_UOPS_RETIRED:ALL_STORES@500000 --mapping 0,20,1,21,2,22,3,23,4,24,5,25,6,26,7,27,10,30,11,31,12,32,13,33,14,34,15,35,16,36,17,37 mpirun -np 1 ./harris.Linux --tpp 32

rm -r harris_32_compact_thread_data3
mkdir harris_32_compact_thread_data3
mv *.csv harris_32_compact_thread_data3
mv *ranking.txt harris_32_compact_thread_data3

echo "LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f \"Elapsed Time , \%e, system, \%S, user, \%U, memory, \%M\" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS\@500000 -e MEM_UOPS_RETIRED:ALL_STORES\@500000 --mapping 0,20,1,21,2,22,3,23,4,24,5,25,6,26,7,27,10,30,11,31,12,32,13,33,14,34,15,35,16,36,17,37 mpirun -np 1 ./harris.Linux --tpp 32"

LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS@500000 -e MEM_UOPS_RETIRED:ALL_STORES@500000 --mapping 0,20,1,21,2,22,3,23,4,24,5,25,6,26,7,27,10,30,11,31,12,32,13,33,14,34,15,35,16,36,17,37 mpirun -np 1 ./harris.Linux --tpp 32

rm -r harris_32_compact_thread_data4
mkdir harris_32_compact_thread_data4
mv *.csv harris_32_compact_thread_data4
mv *ranking.txt harris_32_compact_thread_data4

echo "LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f \"Elapsed Time , \%e, system, \%S, user, \%U, memory, \%M\" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS\@500000 -e MEM_UOPS_RETIRED:ALL_STORES\@500000 --mapping 0,20,1,21,2,22,3,23,4,24,5,25,6,26,7,27,10,30,11,31,12,32,13,33,14,34,15,35,16,36,17,37 mpirun -np 1 ./harris.Linux --tpp 32"

LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS@500000 -e MEM_UOPS_RETIRED:ALL_STORES@500000 --mapping 0,20,1,21,2,22,3,23,4,24,5,25,6,26,7,27,10,30,11,31,12,32,13,33,14,34,15,35,16,36,17,37 mpirun -np 1 ./harris.Linux --tpp 32

rm -r harris_32_compact_thread_data5
mkdir harris_32_compact_thread_data5
mv *.csv harris_32_compact_thread_data5
mv *ranking.txt harris_32_compact_thread_data5
