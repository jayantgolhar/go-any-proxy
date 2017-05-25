#usage : ./run-general-graph-plot.sh datafile1 datafile2 outputfilename graphProgram

graphProgram=$1
outputFile="$2.png"
lines=$3
dataFile1=$4
title1=$5
dataFile2=$6
title2=$7
dataFile3=$8
title3=$9
dataFile4=${10}
title4=${11}
dataFile5=${12}
title5=${13}
ylabelname=${14}
xlabelname=${15}
titlename=${16}
ycolumn=${17}

gnuplot -e "lines='${lines}'; dataFile1='${dataFile1}'; title1='${title1}'; dataFile2='${dataFile2}'; title2='${title2}'; dataFile3='${dataFile3}'; title3='${title3}'; dataFile4='${dataFile4}'; title4='${title4}'; dataFile5='${dataFile5}'; title5='${title5}'; outputFile='${outputFile}'; xlabelname='${xlabelname}'; ylabelname='${ylabelname}'; titlename='${titlename}'; ycolumn='${ycolumn}'; " $graphProgram
