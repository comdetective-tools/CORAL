import matplotlib.pyplot as plt
import numpy as np
import os, re
from matplotlib import cm as CM

adamant_path="/home/msasongko17/project/feather-project/master/src/adamant-double"
ComMon_path="/home/msasongko17/project/feather-project/hpctoolkit-bin"

#intra socket
sharing_frac_list = [ [0.0, 1.0], [0.1, 0.9], [0.2, 0.8], [0.3, 0.7], [0.4, 0.6], [0.5, 0.5], [0.6, 0.4], [0.7, 0.3], [0.8, 0.2], [0.9, 0.1], [1.0, 0.0]]

os.system("echo \"\" > comdetectiveout")

for list1 in sharing_frac_list:
	print("GOMP_CPU_AFFINITY=\"0 1 2 3\" LD_LIBRARY_PATH=%s/src /usr/bin/time -f \"Elapsed Time , %%e, system, %%S, user, %%U, memory, %%M\" %s/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS@500000 -e MEM_UOPS_RETIRED:ALL_STORES@500000 ./ubench -g 2 -n 4 -s %0.1f %0.1f -d 2 2 -t 0 1 2 3 -i 100000000" % (adamant_path, ComMon_path, list1[0], list1[1]))

	os.system("GOMP_CPU_AFFINITY=\"0 1 2 3\" LD_LIBRARY_PATH=%s/src /usr/bin/time -f \"Elapsed Time , %%e, system, %%S, user, %%U, memory, %%M\" %s/bin/hpcrun -o test1_output_folder -e WP_FALSE_SHARING -e MEM_UOPS_RETIRED:ALL_LOADS@500000 -e MEM_UOPS_RETIRED:ALL_STORES@500000 ./ubench -g 2 -n 4 -s %0.1f %0.1f -d 2 2 -t 0 1 2 3 -i 100000000 >> comdetectiveout" % (adamant_path, ComMon_path, list1[0], list1[1]))

	os.system("printf \"\n\" >> comdetectiveout")

	os.system("mkdir %0.1f_%0.1f_results" % (list1[0], list1[1]))
	os.system("mv ts_matrix.csv %0.1f_%0.1f_results" % (list1[0], list1[1]))
	os.system("mv fs_matrix.csv %0.1f_%0.1f_results" % (list1[0], list1[1]))
	os.system("mv as_matrix.csv %0.1f_%0.1f_results" % (list1[0], list1[1]))
print("\n")

# generating heat maps


plt.rcParams.update({'font.size': 6.5})
fig = plt.figure()
# first phase
ax1 = fig.add_subplot(521)
ax1.set_title("ComDetective (0.1 - 0.9)")
M = np.genfromtxt('0.1_0.9_results/as_matrix.csv', dtype=None, delimiter=',')
M = np.flipud(M)
cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=0.6)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1)) 

for i in range((y2+0.5).astype(np.int64)):
    for j in range((x2+0.5).astype(np.int64)):
        text = ax1.text(j, i, np.round(M[i, j]/np.amax(M)*100)/100,
                       ha="center", va="center", color="w")

# another phase
ax1 = fig.add_subplot(522)
ax1.set_title("Expected (0.1 - 0.9)")
M = [[0, 0, 9.0, 0], [0, 0, 0, 9.0], [1.0, 0, 0, 0], [0, 1.0, 0, 0]]
M = np.flipud(M)
cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=0.6)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1))

for i in range((y2+0.5).astype(np.int64)):
    for j in range((x2+0.5).astype(np.int64)):
        text = ax1.text(j, i, np.round(M[i, j]/np.amax(M)*100)/100,
                       ha="center", va="center", color="w")

# second phase
ax1 = fig.add_subplot(523)
ax1.set_title("ComDetective (0.2 - 0.8)")
M = np.genfromtxt('0.2_0.8_results/as_matrix.csv', dtype=None, delimiter=',')
M = np.flipud(M)
cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=0.6)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1)) 

for i in range((y2+0.5).astype(np.int64)):
    for j in range((x2+0.5).astype(np.int64)):
        text = ax1.text(j, i, np.round(M[i, j]/np.amax(M)*100)/100,
                       ha="center", va="center", color="w")

# another phase
ax1 = fig.add_subplot(524)
ax1.set_title("Expected (0.2 - 0.8)")
M = [[0, 0, 8.0, 0], [0, 0, 0, 8.0], [2.0, 0, 0, 0], [0, 2.0, 0, 0]]
M = np.flipud(M)
cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=0.6)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1))

for i in range((y2+0.5).astype(np.int64)):
    for j in range((x2+0.5).astype(np.int64)):
        text = ax1.text(j, i, np.round(M[i, j]/np.amax(M)*100)/100,
                       ha="center", va="center", color="w")

# third phase
ax1 = fig.add_subplot(525)
ax1.set_title("ComDetective (0.3 - 0.7)")
M = np.genfromtxt('0.3_0.7_results/as_matrix.csv', dtype=None, delimiter=',')
M = np.flipud(M)
cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=0.6)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1)) 

for i in range((y2+0.5).astype(np.int64)):
    for j in range((x2+0.5).astype(np.int64)):
        text = ax1.text(j, i, np.round(M[i, j]/np.amax(M)*100)/100,
                       ha="center", va="center", color="w")

# another phase
ax1 = fig.add_subplot(526)
ax1.set_title("Expected (0.3 - 0.7)")
M = [[0, 0, 7.0, 0], [0, 0, 0, 7.0], [3.0, 0, 0, 0], [0, 3.0, 0, 0]]
M = np.flipud(M)
cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=0.6)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1))

for i in range((y2+0.5).astype(np.int64)):
    for j in range((x2+0.5).astype(np.int64)):
        text = ax1.text(j, i, np.round(M[i, j]/np.amax(M)*100)/100,
                       ha="center", va="center", color="w")

# fourth phase
ax1 = fig.add_subplot(527)
ax1.set_title("ComDetective (0.4 - 0.6)")
M = np.genfromtxt('0.4_0.6_results/as_matrix.csv', dtype=None, delimiter=',')
M = np.flipud(M)
cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=0.6)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1)) 

for i in range((y2+0.5).astype(np.int64)):
    for j in range((x2+0.5).astype(np.int64)):
        text = ax1.text(j, i, np.round(M[i, j]/np.amax(M)*100)/100,
                       ha="center", va="center", color="w")

# another phase
ax1 = fig.add_subplot(528)
ax1.set_title("Expected (0.4 - 0.6)")
M = [[0, 0, 6.0, 0], [0, 0, 0, 6.0], [4.0, 0, 0, 0], [0, 4.0, 0, 0]]
M = np.flipud(M)
cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=0.6)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1))

for i in range((y2+0.5).astype(np.int64)):
    for j in range((x2+0.5).astype(np.int64)):
        text = ax1.text(j, i, np.round(M[i, j]/np.amax(M)*100)/100,
                       ha="center", va="center", color="w")

# fifth phase
ax1 = fig.add_subplot(529)
ax1.set_title("ComDetective (0.5 - 0.5)")
M = np.genfromtxt('0.5_0.5_results/as_matrix.csv', dtype=None, delimiter=',')
M = np.flipud(M)
cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=0.6)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1)) 

for i in range((y2+0.5).astype(np.int64)):
    for j in range((x2+0.5).astype(np.int64)):
        text = ax1.text(j, i, np.round(M[i, j]/np.amax(M)*100)/100,
                       ha="center", va="center", color="w")

# another phase
ax1 = fig.add_subplot(5,2, 10)
ax1.set_title("Expected (0.5 - 0.5)")
M = [[0, 0, 5.0, 0], [0, 0, 0, 5.0], [5.0, 0, 0, 0], [0, 5.0, 0, 0]]
M = np.flipud(M)
cmap = CM.get_cmap('gray_r', 10)

ax1.imshow(M, interpolation="nearest", cmap=cmap, aspect=0.6)

plt.gca().invert_yaxis()
x1,x2,y1,y2 = plt.axis()
plt.xticks(np.arange(x1+0.5, x2+0.5, 1))
plt.yticks(np.arange(y1+0.5, y2+0.5, 1))

for i in range((y2+0.5).astype(np.int64)):
    for j in range((x2+0.5).astype(np.int64)):
        text = ax1.text(j, i, np.round(M[i, j]/np.amax(M)*100)/100,
                       ha="center", va="center", color="w")

plt.tight_layout()
plt.savefig("./p2p_verification.png", dpi=72)
plt.savefig("./p2p_verification.eps", dpi=72)
