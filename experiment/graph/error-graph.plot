set print "-"
set term png size 600, 400
set datafile separator ","
set output outputFile
set key left top Left box 3
set ylabel 'Error(%)'
set xlabel 'Number of Connection'
set title 'Error'
set style data linespoints
if(lines == 2){ plot dataFile1 using 1:7 title title1, dataFile2 using 1:7 title title2 linetype 4
} else {
         plot dataFile1 using 1:7 title title1, dataFile2 using 1:7 title title2, dataFile3 using 1:7 title title3, dataFile4 using 1:7 title title4, dataFile5 using 1:7 title title5 linetype 7
}

