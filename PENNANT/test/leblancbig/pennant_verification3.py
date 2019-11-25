import matplotlib.pyplot as plt
import numpy as np
import os, re
from matplotlib import cm as CM

adamant_path="/home/msasongko17/project/feather-project/adamant-3.0"
ComMon_path="/home/msasongko17/project/feather-project/hpctoolkit-bin"
thread_mapping = [0, 20, 1, 21, 2, 22, 3, 23, 4, 24, 5, 25, 6, 26, 7, 27, 10, 30, 11, 31, 12, 32, 13, 33, 14, 34, 15, 35, 16, 36, 17, 37]

thread_num = 32
core_num = 40
plt.rcParams.update({'font.size': 12})

#intra socket
sharing_frac_list = [ [0.0, 1.0], [0.1, 0.9], [0.2, 0.8], [0.3, 0.7], [0.4, 0.6], [0.5, 0.5], [0.6, 0.4], [0.7, 0.3], [0.8, 0.2], [0.9, 0.1], [1.0, 0.0]]

os.system("echo \"\" > comdetectiveout")

#for list1 in sharing_frac_list:
print("GOMP_CPU_AFFINITY=\"0 20 1 21 2 22 3 23 4 24 5 25 6 26 7 27 10 30 11 31 12 32 13 33 14 34 15 35 16 36 17 37\" LD_LIBRARY_PATH=%s/src /usr/bin/time -f \"Elapsed Time , %%e, system, %%S, user, %%U, memory, %%M\" %s/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS@500000 -e MEM_UOPS_RETIRED:ALL_STORES@500000 ../../build/pennant leblancbig.pnt" % (adamant_path, ComMon_path))

os.system("GOMP_CPU_AFFINITY=\"0 20 1 21 2 22 3 23 4 24 5 25 6 26 7 27 10 30 11 31 12 32 13 33 14 34 15 35 16 36 17 37\" LD_LIBRARY_PATH=%s/src /usr/bin/time -f \"Elapsed Time , %%e, system, %%S, user, %%U, memory, %%M\" %s/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS@500000 -e MEM_UOPS_RETIRED:ALL_STORES@500000 ../../build/pennant leblancbig.pnt" % (adamant_path, ComMon_path))

os.system("printf \"\n\" >> comdetectiveout")

os.system("mkdir pennant_results")
os.system("mv ts_matrix.csv pennant_results")
os.system("mv fs_matrix.csv pennant_results")
os.system("mv as_matrix.csv pennant_results")
os.system("mv ts_core_matrix.csv pennant_results")
os.system("mv fs_core_matrix.csv pennant_results")
os.system("mv as_core_matrix.csv pennant_results")
os.system("mkdir pennant_object_results")
os.system("mv *.csv pennant_object_results")
print("\n")

#fig = plt.figure()
fig = plt.figure(figsize=(10,10))
# first phase
ax1 = fig.add_subplot(111)
ax1.set_title("pennant")
M = np.genfromtxt('pennant_results/as_matrix.csv', dtype=None, delimiter=',')
#print(M.size)
#print(len(M))
M1 = np.zeros((thread_num,thread_num))
if len(np.nonzero(M)) == 1:
	M = M1
else: 
	M_size = len(M)
	if M_size < thread_num:
		M1[thread_num-M_size:thread_num,0:M_size] = M
		M=M1
M = np.flipud(M)
cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=1.0)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1)) 

plt.tight_layout()
plt.savefig("./pennant_verification.png", dpi=72)
plt.savefig("./pennant_verification.eps", dpi=72)

#core
fig = plt.figure(figsize=(10,10))
# first phase
ax1 = fig.add_subplot(111)
ax1.set_title("pennant") 
M = np.genfromtxt('pennant_results/as_core_matrix.csv', dtype=None, delimiter=',')
M1 = np.zeros((core_num,core_num))
#print(len(M))
#print(np.nonzero(M))
if len(np.nonzero(M)) == 1:
        M = M1
else:
        M_size = len(M)
        if M_size < core_num:
                M1[core_num-M_size:core_num,0:M_size] = M
                M=M1
M = np.flipud(M)
cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=1.0)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1))

plt.tight_layout()
plt.savefig("./pennant_verification_core.png", dpi=72)
plt.savefig("./pennant_verification_core.eps", dpi=72)

#begin

result = []
matrix_size = len(M)
thread_mapping_size = len(thread_mapping)
for i in thread_mapping:
	temp = []
	for j in thread_mapping:
		if i < matrix_size and j < matrix_size:
        		temp.append(M[i][j])
		else:
			temp.append(0)
	result.append(temp)

M = result

cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=1.0)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1))

plt.tight_layout()
plt.savefig("./pennant_verification_core_fixed.png", dpi=72)
plt.savefig("./pennant_verification_core_fixed.eps", dpi=72)
#end

#true sharing

fig = plt.figure(figsize=(10,10))
# first phase
ax1 = fig.add_subplot(111)
ax1.set_title("pennant")
M = np.genfromtxt('pennant_results/ts_matrix.csv', dtype=None, delimiter=',')
#print(len(M))
M1 = np.zeros((thread_num,thread_num))
if len(np.nonzero(M)) == 1:
        M = M1
else:
        M_size = len(M)
        if M_size < thread_num:
                M1[thread_num-M_size:thread_num,0:M_size] = M
                M=M1
#print(M)
M = np.flipud(M)
#print(M)
cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=1.0)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1)) 

plt.tight_layout()
plt.savefig("./pennant_verification_ts.png", dpi=72)
plt.savefig("./pennant_verification_ts.eps", dpi=72)

#core

fig = plt.figure(figsize=(10,10))
# first phase
ax1 = fig.add_subplot(111)
ax1.set_title("pennant")
M = np.genfromtxt('pennant_results/ts_core_matrix.csv', dtype=None, delimiter=',')
M1 = np.zeros((core_num,core_num))
if len(np.nonzero(M)) == 1:
        M = M1
else:
        M_size = len(M)
        if M_size < core_num:
                M1[core_num-M_size:core_num,0:M_size] = M
                M=M1

M = np.flipud(M)
cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=1.0)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1))

plt.tight_layout()
plt.savefig("./pennant_verification_ts_core.png", dpi=72)
plt.savefig("./pennant_verification_ts_core.eps", dpi=72)

#begin

result = []
matrix_size = len(M)
thread_mapping_size = len(thread_mapping)
for i in thread_mapping:
	temp = []
	for j in thread_mapping:
		if i < matrix_size and j < matrix_size:
        		temp.append(M[i][j])
		else:
			temp.append(0)
	result.append(temp)

M = result

cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=1.0)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1))

plt.tight_layout()
plt.savefig("./pennant_verification_ts_core_fixed.png", dpi=72)
plt.savefig("./pennant_verification_ts_core_fixed.eps", dpi=72)
#end

#false sharing

fig = plt.figure(figsize=(10,10))
# first phase
ax1 = fig.add_subplot(111)
ax1.set_title("pennant")
M = np.genfromtxt('pennant_results/fs_matrix.csv', dtype=None, delimiter=',')
M1 = np.zeros((thread_num,thread_num))
if len(np.nonzero(M)) == 1:
        M = M1
else:
        M_size = len(M)
        if M_size < thread_num:
                M1[thread_num-M_size:thread_num,0:M_size] = M
                M=M1

M = np.flipud(M)

cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=1.0)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1)) 

plt.tight_layout()
plt.savefig("./pennant_verification_fs.png", dpi=72)
plt.savefig("./pennant_verification_fs.eps", dpi=72)

#core

fig = plt.figure(figsize=(10,10))
# first phase
ax1 = fig.add_subplot(111)
ax1.set_title("pennant")
M = np.genfromtxt('pennant_results/fs_core_matrix.csv', dtype=None, delimiter=',')
M1 = np.zeros((core_num,core_num))

if len(np.nonzero(M)) == 1:
        M = M1
else:
        M_size = len(M)
        if M_size < core_num:
                M1[core_num-M_size:core_num,0:M_size] = M
                M=M1

M = np.flipud(M)
cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=1.0)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1))

plt.tight_layout()
plt.savefig("./pennant_verification_fs_core.png", dpi=72)
plt.savefig("./pennant_verification_fs_core.eps", dpi=72)

#begin

result = []
matrix_size = len(M)
thread_mapping_size = len(thread_mapping)
for i in thread_mapping:
	temp = []
	for j in thread_mapping:
		if i < matrix_size and j < matrix_size:
        		temp.append(M[i][j])
		else:
			temp.append(0)
	result.append(temp)

M = result

cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=1.0)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1))

plt.tight_layout()
plt.savefig("./pennant_verification_fs_core_fixed.png", dpi=72)
plt.savefig("./pennant_verification_fs_core_fixed.eps", dpi=72)
#end
