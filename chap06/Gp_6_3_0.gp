# ========== ==========
# gnuplot Re_6_3_0_diff.dat 描画ファイル
# ========== ==========

reset

fname = "Re_6_3_0_diff"
loc = "_local"
dat = ".dat"
eps = ".eps"
png = ".png"

# :: 描画領域の設定
set xrange[0:1]
set yrange[-1:1]
set xlabel "x"
set ylabel "y"

set key right bottom

# :: plot , epsファイル 
set terminal postscript eps
set output fname.eps
plot fname.dat u 1:2 w lp title "y" lc "black" , fname.dat u 1:3 w lp title "y_{prime}" lc "red", fname.dat u 1:4 w lp title "y_{exact}" lc "blue"
set output

# :: plot , pngファイル 
set terminal png
set output fname.png
plot fname.dat u 1:2 w lp title "y" lc "black" , fname.dat u 1:3 w lp title "y_{prime}" lc "red", fname.dat u 1:4 w lp title "y_{exact}" lc "blue"
set output

# :: 描画領域の設定
set xrange[0.65:0.85]
set yrange[0.8:1.0]
unset key

# :: plot , epsファイル 
set terminal postscript eps
set output fname.loc.eps
plot fname.dat u 1:2 w lp title "y" lc "black" , fname.dat u 1:3 w lp title "y_{prime}" lc "red", fname.dat u 1:4 w lp title "y_{exact}" lc "blue"
set output

# :: plot , pngファイル 
set terminal png
set output fname.loc.png
plot fname.dat u 1:2 w lp title "y" lc "black" , fname.dat u 1:3 w lp title "y_{prime}" lc "red", fname.dat u 1:4 w lp title "y_{exact}" lc "blue"
set output

