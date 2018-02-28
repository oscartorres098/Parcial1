def MeasureTime( v, t ):
	sT = time.process_time( )
	leer_matriz(v, t)
	triangulo_superior(v, t)
	eT = time.process_time( )
	return float( eT - sT )


def leer_matriz(v, t):
	for i in range (t):
		for j in range (t):
			print ("Escriba el elemento %u de la columna %u: ", j+1, i+1)
			v[i][j] = input()
	for i in range (t):
		for j in range (t):
			printf(v[i][j])
	print("\n")
 
def triangulo_superior(v, unsigned t):
	x = 0
	for i in range (t):
		for j in range (t):
			if (j > i):
				x += v[i][j]
	print ( "La suma es:", x )
 
 
max = 5
print ("Cuantos elementos va a tener la matriz?: (maximo 5)");
t = input()

 
