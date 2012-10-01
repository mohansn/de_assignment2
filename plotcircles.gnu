#set terminal postscript eps enhanced
set terminal latex
set parametric
set multiplot
set origin 0,0
set xrange [-20:20]
set yrange [-20:20]
set size square
set grid
unset key
set title "Family of curves (circles) satisfying the differential equation\nCircles are of radii 4,8,10,15 and 19 units"
set xlabel 'x'
set ylabel 'y'
plot [0:2*pi] sqrt(16) * sin(t),sqrt(16)*cos(t)
plot [0:2*pi] sqrt(64) * sin(t),sqrt(64)*cos(t)
plot [0:2*pi] sqrt(100) * sin(t),sqrt(100)*cos(t)
plot [0:2*pi] sqrt(225) * sin(t),sqrt(225)*cos(t)
plot [0:2*pi] sqrt(361) * sin(t),sqrt(361)*cos(t)
unset multiplot