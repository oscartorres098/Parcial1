
secante <- function(f,x1,x2,E) {
	pns1 <- x1
	pns2 <- x2
	while (abs(f(pns1)) > E) {
		pn <- pns1 - (f(pns1)*(pns1 - pns2))/(f(pns1) - f(pns2))
		pns2 <- pns1
		pns1 <- pn
	}
	pns1
}

newton_generalizado <- function(f,x0,E) {
	df <- function(x) {}
	body(df) <- D(body(f),'x')
	ddf <- function(x) {}
	body(ddf) <- D(body(df),'x')

	x <- x0
	while (abs(f(x)) > E) {
		x <- x - f(x)*df(x)/(ddf(x)^2 - f(x)*ddf(x))
	}
	x
}

f <- function (x) (log(x+2) - sin(x))

x <- newton_generalizado(f,-1.8,1e-5)
print(paste('x',x))

x <- secante(f, -1.8, 0, 1e-7)
print(paste('x',x)
