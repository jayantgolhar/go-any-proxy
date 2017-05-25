set print "-"
set term png size 600, 400
set datafile separator ","
set output outputFile
set key left top Left box 3
set ylabel ylabelname
set xlabel xlabelname
set title titlename
set style data linespoints
print ycolumn
if(lines == 3){ 
	plot dataFile1 using 1:(column(ycolumn+0)) title title1, dataFile2 using 1:(column(ycolumn+0)) title title2, dataFile3 using 1:(column(ycolumn+0)) title title3 linetype 4
} else {
         plot dataFile1 using 1:(column(ycolumn+0)) title title1, dataFile2 using 1:(column(ycolumn+0)) title title2, dataFile3 using 1:(column(ycolumn+0)) title title3, dataFile4 using 1:(column(ycolumn+0)) title title4, dataFile5 using 1:(column(ycolumn+0)) title title5 linetype 7
}

