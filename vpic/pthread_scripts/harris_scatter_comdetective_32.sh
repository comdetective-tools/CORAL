#!/bin/bash

echo "LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f \"Elapsed Time , \%e, system, \%S, user, \%U, memory, \%M\" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS\@500000 -e MEM_UOPS_RETIRED:ALL_STORES\@500000 --mapping 0,10,1,11,2,12,3,13,4,14,5,15,6,16,7,17,8,18,9,19,20,30,21,31,22,32,23,33,24,34,25,35 mpirun -np 1 ./harris.Linux --tpp 32"

LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS@500000 -e MEM_UOPS_RETIRED:ALL_STORES@500000 --mapping 0,10,1,11,2,12,3,13,4,14,5,15,6,16,7,17,8,18,9,19,20,30,21,31,22,32,23,33,24,34,25,35 mpirun -np 1 ./harris.Linux --tpp 32

rm -r harris_32_thread_scatter_data1
mkdir harris_32_thread_scatter_data1
mv *.csv harris_32_thread_scatter_data1
mv *ranking.txt harris_32_thread_scatter_data1

echo "LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f \"Elapsed Time , \%e, system, \%S, user, \%U, memory, \%M\" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS\@500000 -e MEM_UOPS_RETIRED:ALL_STORES\@500000 --mapping 0,10,1,11,2,12,3,13,4,14,5,15,6,16,7,17,8,18,9,19,20,30,21,31,22,32,23,33,24,34,25,35 mpirun -np 1 ./harris.Linux --tpp 32"

LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS@500000 -e MEM_UOPS_RETIRED:ALL_STORES@500000 --mapping 0,10,1,11,2,12,3,13,4,14,5,15,6,16,7,17,8,18,9,19,20,30,21,31,22,32,23,33,24,34,25,35 mpirun -np 1 ./harris.Linux --tpp 32

rm -r harris_32_thread_scatter_data2
mkdir harris_32_thread_scatter_data2
mv *.csv harris_32_thread_scatter_data2
mv *ranking.txt harris_32_thread_scatter_data2

echo "LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f \"Elapsed Time , \%e, system, \%S, user, \%U, memory, \%M\" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS\@500000 -e MEM_UOPS_RETIRED:ALL_STORES\@500000 --mapping 0,10,1,11,2,12,3,13,4,14,5,15,6,16,7,17,8,18,9,19,20,30,21,31,22,32,23,33,24,34,25,35 mpirun -np 1 ./harris.Linux --tpp 32"

LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS@500000 -e MEM_UOPS_RETIRED:ALL_STORES@500000 --mapping 0,10,1,11,2,12,3,13,4,14,5,15,6,16,7,17,8,18,9,19,20,30,21,31,22,32,23,33,24,34,25,35 mpirun -np 1 ./harris.Linux --tpp 32

rm -r harris_32_thread_scatter_data3
mkdir harris_32_thread_scatter_data3
mv *.csv harris_32_thread_scatter_data3
mv *ranking.txt harris_32_thread_scatter_data3

echo "LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f \"Elapsed Time , \%e, system, \%S, user, \%U, memory, \%M\" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS\@500000 -e MEM_UOPS_RETIRED:ALL_STORES\@500000 --mapping 0,10,1,11,2,12,3,13,4,14,5,15,6,16,7,17,8,18,9,19,20,30,21,31,22,32,23,33,24,34,25,35 mpirun -np 1 ./harris.Linux --tpp 32"

LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS@500000 -e MEM_UOPS_RETIRED:ALL_STORES@500000 --mapping 0,10,1,11,2,12,3,13,4,14,5,15,6,16,7,17,8,18,9,19,20,30,21,31,22,32,23,33,24,34,25,35 mpirun -np 1 ./harris.Linux --tpp 32

rm -r harris_32_thread_scatter_data4
mkdir harris_32_thread_scatter_data4
mv *.csv harris_32_thread_scatter_data4
mv *ranking.txt harris_32_thread_scatter_data4

echo "LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f \"Elapsed Time , \%e, system, \%S, user, \%U, memory, \%M\" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS\@500000 -e MEM_UOPS_RETIRED:ALL_STORES\@500000 --mapping 0,10,1,11,2,12,3,13,4,14,5,15,6,16,7,17,8,18,9,19,20,30,21,31,22,32,23,33,24,34,25,35 mpirun -np 1 ./harris.Linux --tpp 32"

LD_LIBRARY_PATH=/home/msasongko17/project/feather-project/adamant-3.0/src /usr/bin/time -f "Elapsed Time , %e, system, %S, user, %U, memory, %M" /home/msasongko17/project/feather-project/hpctoolkit-bin/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS@500000 -e MEM_UOPS_RETIRED:ALL_STORES@500000 --mapping 0,10,1,11,2,12,3,13,4,14,5,15,6,16,7,17,8,18,9,19,20,30,21,31,22,32,23,33,24,34,25,35 mpirun -np 1 ./harris.Linux --tpp 32

rm -r harris_32_thread_scatter_data5
mkdir harris_32_thread_scatter_data5
mv *.csv harris_32_thread_scatter_data5
mv *ranking.txt harris_32_thread_scatter_data5
