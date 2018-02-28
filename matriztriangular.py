def leer_matriz(v, t):
	for(i=0; i<t; i++):
		for(j=0; j<t; j++):
			print ("Escriba el elemento %u de la columna %u: ", j+1, i+1)
			v[i][j] = input()
	for(i=0; i<t; i++):
		for(j=0; j<t; j++):
			printf(v[i][j])
	print("\n");
    }
}
 
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
leer_matriz(v, t)
triangulo_superior(v, t)
 
