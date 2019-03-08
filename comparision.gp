set terminal tikz standalone
set format y "$%g$"
set grid
set ylabel "Number of the drug identifications"
set y2label "Percentage in the total state drug reports(\\%)"
set xlabel "Year"
set y2tics
set ytics nomirror
set y2range [40:100]

set output "FiveStates.tex"
set title "Trend of the number of identifications"
plot "statesSum.txt" u 1:($2) title "Sum of the five states" with lp linetype "dash" lc rgb "black" pt 3 lw 2 axis x1y1,\
	"statesSum.txt" u 1:($3) title "Percentage" with lp lc rgb "black" pt 9 lw 2 axis x1y2
