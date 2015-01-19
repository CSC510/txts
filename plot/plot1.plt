set terminal png  transparent enhanced  fontscale 1.0 size 500, 350 
# set output 'contours.17.png'

set title "Work Load Graph" 
set xlabel "Week" 
set ylabel "WorkLoad(Hours)" 

set xtics ( '0' 0,'1' 1, '2' 2,  '3' 3,  '4' 4 , '5' 5, '6' 6, '7' 7 , '8' 8)
set ytics ('0' 0, '2' 2,  '4' 4,  '6' 6 , '8' 8,'10' 10, '12' 12)
unset key
set grid
#f(x)=sin(x)

set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2
set style line 2 linecolor rgb '#dd181f' linetype 1 linewidth 2
plot 'file.dat' with lines linestyle 1
