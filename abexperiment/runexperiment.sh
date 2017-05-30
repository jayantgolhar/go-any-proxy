#!/bin/bash

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

conc[20]=2250
conc[21]=2500
conc[22]=2750
conc[23]=3000
conc[24]=3250
conc[25]=3500
conc[26]=3750
conc[27]=4000
conc[28]=4250
conc[29]=4500
conc[30]=4750
conc[31]=5000

conc[32]=5500
conc[33]=6000
conc[34]=6500
conc[35]=7000
conc[36]=7500
conc[37]=8000
conc[38]=8500
conc[39]=9000
conc[40]=9500
conc[41]=10000

finalresult="transparentproxy"
#finalresult="netmonproxy"

# echo "Concurrency Level,Time taken for tests,Complete requests,Failed requests,Non-2xx responses,Keep-Alive requests,Total transferred,HTML transferred,Requests per second,Time per request,Time per request,Transfer rate" > summary-$finalresult

i=41
iteration=3
count=42

while test $i != $count
do 
	j=0

	while test $j != $iteration
	do 
		# ab -c${conc[$i]} -n10000 https://www.google.com/gmail/ > intermediate_output
		# ab -c${conc[$i]} -n10000 -X 10.201.23.1:80 http://www.google.com/gmail/ > intermediate_output
		ab -c${conc[$i]} -n10000 https://www.google.com/gmail/ > intermediate_output
		#ab -c${conc[$i]} -n10000 -X 10.201.23.1:80 http://www.google.com/gmail/ > intermediate_output

		tail -n 29 intermediate_output | head -n 11 | awk 'BEGIN{FS=":"} {print $2}' | awk 'BEGIN{FS=" "} {print $1}' | awk 'BEGIN { ORS = "," } { print } END{printf "\n"}' >> semiresult_${finalresult}_${conc[$i]}
		j=`expr $j + 1`
		cat semiresult_${finalresult}_${conc[$i]}
		echo "sleep"
		sleep 3s
	done

	# awk 'BEGIN{FS=","} { for (i = 1; i <= NF; i++) sum[i] += $i } END { if (NR > 0) for (i = 1; i <= NF; i++){ printf "%.2f,", sum[i] / NR} printf "\n" }' semiresult_${finalresult}_${conc[$i]} >> summary-$finalresult
	# rm semiresultnetmon_anyproxy

	i=`expr $i + 1`
done

