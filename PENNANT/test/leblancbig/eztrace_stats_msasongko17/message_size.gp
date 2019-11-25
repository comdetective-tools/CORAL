set terminal png
set output "./eztrace_stats_msasongko17/message_size.png"
set xlabel "message size (B)"
set ylabel "number of messages"
plot "./eztrace_stats_msasongko17/message_size.dat" with linespoints
