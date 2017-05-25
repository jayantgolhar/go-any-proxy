
GraphName=$1
datafolder="../"
fileinitials=$datafolder"summary"

inputfile1=$fileinitials-anyproxy-nologging
graphlabel1="Anyproxy-No-Logging"
inputfile2=$fileinitials-anyproxy-logging
graphlabel2="Anyproxy-Logging"
inputfile3=$fileinitials-anyproxy-nolocking
graphlabel3="Anyproxy-No-Locking"
inputfile4=$fileinitials-transparentproxy
graphlabel4="Transparentproxy"
inputfile5=$fileinitials-netmonproxy 
graphlabel5="Netmonproxy"\


#Total Time
# total-time-graph.plot \
fileinitials="summary"
./run-general-graph-plot.sh \
common-graph.plot \
total-time \
3 \
$inputfile1 $graphlabel1 \
$inputfile2 $graphlabel2 \
$inputfile3 $graphlabel3 \
$inputfile4 $graphlabel4 \
$inputfile5 $graphlabel5 \
'Total Time(second)' \
'Number of Connection' \
'Total Time' \
2

#Throughput
fileinitials="summary"
./run-general-graph-plot.sh \
common-graph.plot \
throughput \
3 \
$inputfile1 $graphlabel1 \
$inputfile2 $graphlabel2 \
$inputfile3 $graphlabel3 \
$inputfile4 $graphlabel4 \
$inputfile5 $graphlabel5 \
'Throughput(conn/sec)' \
'Number of Connection' \
'Throughput' \
8

#Average Response Time
./run-general-graph-plot.sh \
common-graph.plot \
average-response-time \
3 \
$inputfile1 $graphlabel1 \
$inputfile2 $graphlabel2 \
$inputfile3 $graphlabel3 \
$inputfile4 $graphlabel4 \
$inputfile5 $graphlabel5 \
'Avg Response Time(ms)' \
'Number of Connection' \
'Response Time' \
9

#Average Response Time
./run-general-graph-plot.sh \
common-graph.plot \
average-response-time-concurrent \
3 \
$inputfile1 $graphlabel1 \
$inputfile2 $graphlabel2 \
$inputfile3 $graphlabel3 \
$inputfile4 $graphlabel4 \
$inputfile5 $graphlabel5 \
'Avg Response Time(ms)' \
'Number of Connection' \
'Response Time' \
10

#Transfer Rate
./run-general-graph-plot.sh \
common-graph.plot \
transfer-rate \
3 \
$inputfile1 $graphlabel1 \
$inputfile2 $graphlabel2 \
$inputfile3 $graphlabel3 \
$inputfile4 $graphlabel4 \
$inputfile5 $graphlabel5 \
'Transfer Rate(Kbytes/sec)' \
'Number of Connection' \
'Transfer Rate' \
11


# #Minimum Response Time
# fileinitials="summary"
# ./run-general-graph-plot.sh \
# common-graph.plot \
# min-response-time \
# 5 \
# $inputfile1 $graphlabel1 \
# $inputfile2 $graphlabel2 \
# $inputfile3 $graphlabel3 \
# $inputfile4 $graphlabel4 \
# $inputfile5 $graphlabel5 \
# 'Min Response Time(ms)' \
# 'Number of Connection' \
# 'Minimum Response Time' \
# 5

# #Maximum Response Time
# fileinitials="summary"
# ./run-general-graph-plot.sh \
# common-graph.plot \
# max-response-time \
# 5 \
# $inputfile1 $graphlabel1 \
# $inputfile2 $graphlabel2 \
# $inputfile3 $graphlabel3 \
# $inputfile4 $graphlabel4 \
# $inputfile5 $graphlabel5 \
# 'Max Response Time(ms)' \
# 'Number of Connection' \
# 'Maximum Response Time' \
# 6

# #Error
# fileinitials="summary"
# ./run-general-graph-plot.sh \
# common-graph.plot \
# error \
# 5 \
# $inputfile1 $graphlabel1 \
# $inputfile2 $graphlabel2 \
# $inputfile3 $graphlabel3 \
# $inputfile4 $graphlabel4 \
# $inputfile5 $graphlabel5 \
# 'Error(%)' \
# 'Number of Connection' \
# 'Error' \
# 7

