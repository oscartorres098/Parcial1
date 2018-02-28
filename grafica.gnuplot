set terminal png

l(x)=a1*x + a0
p(x)=a2*x*x + a1*x + a0
c(x)=a3*x*x*x + a2*x*x + a1*x + a0

set output "Matriz.png"
set title "Matriz timing"
set xlabel "Size (n)"
set ylabel "Time (s)"
fit p(x) "Matriz.res" using 1:3 via a2, a1, a0
plot "Matriz.res" using 1:3 with lines notitle, p(x)