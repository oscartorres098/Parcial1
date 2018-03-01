
rm(list=ls())
Fx <- function(x) exp(-x) + x -2
F1x <- function(x) 1-exp(-x)

newton <- function(x) {
for(i in 1:20) {
x<-x-Fx(x)/F1x(x)
if (Fx(x) == 0) break
error<-abs(Fx(x)/F1x(x))
cat("X=",x,"\t","E=",error,"\n")
}
}


rm(list=ls())
Fx <- function(x) exp(-x) + x -2
F1x <- function(x) 1-exp(-x)
# Metodo de la Secante
# Halla la raiz de Fx

secante <- function(x0,x1) {
x<-(Fx(x1)*x0-Fx(x0)*x1)/(Fx(x1)-Fx(x0))
error <-1
while (error > 1.e-4) {
x0<-x1
x1<-x
x<-(Fx(x1)*x0-Fx(x0)*x1)/(Fx(x1)-Fx(x0))
if (Fx(x) == 0) break
error<-abs(Fx(x)/F1x(x))
cat("X=",x,"\t","E=",error,"\n")
}
}
secante(0,3)

x <- newton_g(f,-1.8,1e-5)
print(paste('x',x))

x <- secante(f, -1.8, 0, 1e-7)
print(paste('x',x)