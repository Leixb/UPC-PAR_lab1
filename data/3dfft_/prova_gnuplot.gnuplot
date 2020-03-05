plot "/scratch/nas/1/par2109/lab1/3dfft/prova_gnuplot.gnuplot.csv" using 2:($1 == 1 ? $4 : 1/0) with lines title "THREAD 1.1.1"
pause -1
