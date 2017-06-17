set print "-"
set term png size 600, 400
set datafile separator ","
set output outputFile
set key left top Left box 3
set ylabel 'Min Response Time(ms)'
set xlabel 'Number of Connection'
set title 'Minimum Response Time'
set style data linespoints
if(lines == 2){ plot dataFile1 using 1:5 title title1, dataFile2 using 1:5 title title2 linetype 4
} else {
         plot dataFile1 using 1:5 title title1, dataFile2 using 1:5 title title2, dataFile3 using 1:5 title title3, dataFile4 using 1:5 title title4, dataFile5 using 1:5 title title5 linetype 7
}

