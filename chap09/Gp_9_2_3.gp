
reset 

fname = "./Result/adv_t"
dat = ".dat"
fnameFig = "fig_adv"
eps = ".eps"
png = ".png"

set xr [0:1]
set yr[0:1.5]
set xlabel "x"
set ylabel "y"

set terminal postscript eps
set output fnameFig.eps
plot fname."00000".dat u 1:2 w l title "i = 0", for [i=1000:7000:1000] fname."0".i.dat u 1:2 w l title sprintf("i = %d",i)
set output

set terminal png
set output fnameFig.png
plot fname."00000".dat u 1:2 w l title "i = 0", for [i=1000:7000:1000] fname."0".i.dat u 1:2 w l title sprintf("i = %d",i)
set output