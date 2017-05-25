#!/bin/bash

i=0

conc[0]=100
conc[1]=200
conc[2]=300
conc[3]=400
conc[4]=500
conc[5]=600
conc[6]=700
conc[7]=800
conc[8]=900
conc[9]=1000
conc[10]=1100
conc[11]=1200
conc[12]=1300
conc[13]=1400
conc[14]=1500
conc[15]=1600
conc[16]=1700
conc[17]=1800
conc[18]=1900
conc[19]=2000


finalresult="anyproxy-nolocking"
#finalresult="netmonproxy"

echo "Concurrency Level,Time taken for tests,Complete requests,Failed requests,Non-2xx responses,Total transferred,HTML transferred,Requests per second,Time per request,Time per request,Transfer rate" > summary-$finalresult

iteration=10
count=20

while test $i != $count
do 
	awk 'BEGIN{FS=","} { for (i = 1; i <= NF-1; i++) sum[i] += $i } END { if (NR > 0) for (i = 1; i <= NF-1; i++){ printf "%.2f,", sum[i] / NR} printf "\n" }' semiresult_${finalresult}_${conc[$i]} >> summary-$finalresult
	# rm semiresultnetmon_anyproxy

	i=`expr $i + 1`
done
