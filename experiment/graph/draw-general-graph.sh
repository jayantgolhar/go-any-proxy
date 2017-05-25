
GraphName=$1
datafolder=".."
fileinitials="summary"

inputfile1=$fileinitials-anyproxy-nologging-copy 
graphlabel1="Anyproxy-No-Logging"
inputfile2=$fileinitials-anyproxy-logging-copy 
graphlabel2="Anyproxy-Logging"
inputfile3=$fileinitials-anyproxy-nolocking-copy 
graphlabel3="Anyproxy-No-Locking"
inputfile4=$fileinitials-transparentproxy-copy 
graphlabel4="Transparentproxy"
inputfile5=$fileinitials-netmonproxy-copy 
graphlabel5="Netmonproxy"\


#Total Time
# total-time-graph.plot \
fileinitials="summary"
./run-general-graph-plot.sh \
common-graph.plot \
total-time \
5 \
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
5 \
$inputfile1 $graphlabel1 \
$inputfile2 $graphlabel2 \
$inputfile3 $graphlabel3 \
$inputfile4 $graphlabel4 \
$inputfile5 $graphlabel5 \
'Throughput(conn/sec)' \
'Number of Connection' \
'Throughput' \
3

#Average Response Time
./run-general-graph-plot.sh \
common-graph.plot \
average-response-time \
5 \
$inputfile1 $graphlabel1 \
$inputfile2 $graphlabel2 \
$inputfile3 $graphlabel3 \
$inputfile4 $graphlabel4 \
$inputfile5 $graphlabel5 \
'Avg Response Time(ms)' \
'Number of Connection' \
'Response Time' \
4

#Minimum Response Time
fileinitials="summary"
./run-general-graph-plot.sh \
common-graph.plot \
min-response-time \
5 \
$inputfile1 $graphlabel1 \
$inputfile2 $graphlabel2 \
$inputfile3 $graphlabel3 \
$inputfile4 $graphlabel4 \
$inputfile5 $graphlabel5 \
'Min Response Time(ms)' \
'Number of Connection' \
'Minimum Response Time' \
5

#Maximum Response Time
fileinitials="summary"
./run-general-graph-plot.sh \
common-graph.plot \
max-response-time \
5 \
$inputfile1 $graphlabel1 \
$inputfile2 $graphlabel2 \
$inputfile3 $graphlabel3 \
$inputfile4 $graphlabel4 \
$inputfile5 $graphlabel5 \
'Max Response Time(ms)' \
'Number of Connection' \
'Maximum Response Time' \
6

#Error
fileinitials="summary"
./run-general-graph-plot.sh \
common-graph.plot \
error \
5 \
$inputfile1 $graphlabel1 \
$inputfile2 $graphlabel2 \
$inputfile3 $graphlabel3 \
$inputfile4 $graphlabel4 \
$inputfile5 $graphlabel5 \
'Error(%)' \
'Number of Connection' \
'Error' \
7

