set terminal png
set output "./eztrace_stats_msasongko17/communication_matrix_p2p.message_size.png"
set xtics 1
set ytics 1
set xrange [ -0.5 : 31.5]
set yrange [ -0.5 : 31.5]
plot "./eztrace_stats_msasongko17/communication_matrix_p2p.message_size.dat" matrix with image
