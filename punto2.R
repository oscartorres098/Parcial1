taylor <- function(x,n,pns1) {
	y <- x^n/factorial(n) + pns1
	if (n == 0) y <- x
	y
}

atiken <- function(ps2n,ps1n,psn) {
	psn - (ps1n - psn)^2/(ps2n - 2*ps1n + psn)
}


atiken2 <- function(n,x) {
	psn <- taylor(x,0,0)
	ps1n <- taylor(x,1,psn)
	ps2n <- taylor(x,2,ps1n)
	taylor3 <- 3
	atiken3 <- 0

	while (atiken3 < n) {
		At <- atiken(ps2n,ps1n,psn)
		psn <- ps1n 
		ps1n <- ps2n
		ps2n <-taylor(x,taylor3,ps2n)
		taylor3 <- taylor3 + 1
		atiken3 <- atiken3 + 1
		print(paste('atiken(',atiken_k,') ',At))
	}
}


atiken_n(10,1)