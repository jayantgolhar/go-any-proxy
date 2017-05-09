#!/bin/bash

i=0


conc[0]=10
conc[1]=50
conc[2]=100
conc[3]=150
conc[4]=200
conc[5]=250
conc[6]=300
conc[7]=350
conc[8]=400
conc[9]=450
conc[10]=500

# loop[0]=5000
# loop[1]=2500
# loop[2]=1000
# loop[3]=500
# loop[4]=334
# loop[5]=250
# loop[6]=200

finalresult="summary-anyproxy-logging"

echo "Connections,Total Time(s),Throughput,Average Time(ms),Min Time(ms),Max Time(ms),Error(%)" > $finalresult
iteration=10
count=11

while test $i != $count
do 
	# j=0
	# sed 's/_con_/'${conc[$i]}'/g' mytest.jmx > jmtest_${conc[$i]}.jmx

	# while test $j != $iteration
	# do 
	# 	jmeter -n -t jmtest_${conc[$i]}.jmx -r -j results_${conc[$i]}.jtl

	# 	tail -n 3 results_${conc[$i]}.jtl | head -n 1 | awk 'BEGIN{FS=" "} {print $8 "," $10 "," $12 "," $14 "," $16 "," $18 "," $21 }' >> semiresult_${conc[$i]}
	# 	j=`expr $j + 1`
	# 	sed -i -e 's/[)(]//g' semiresult_${conc[$i]}
	# 	cat semiresult_${conc[$i]}
	# 	echo "sleep"
	# 	sleep 10s
	# done

	awk 'BEGIN{FS=","} { for (i = 1; i <= NF; i++) sum[i] += $i } END { if (NR > 0) for (i = 1; i <= NF; i++){ printf "%.2f,", sum[i] / NR} printf "\n" }' semiresult_${conc[$i]} >> $finalresult
	# rm semiresult

	i=`expr $i + 1`
done
