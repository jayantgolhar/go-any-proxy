while true
do 	
	conn=`netstat -an|grep ESTABLISHED | wc -l`
	echo $conn
	awk -v conn="${conn}" '{ $1=$1+conn; $2++; if(conn>$3){$3=conn}; if(conn<$4){$4=conn}; print $0 }' connavg > tmp
	mv tmp connavg
	sleep 1s
done

