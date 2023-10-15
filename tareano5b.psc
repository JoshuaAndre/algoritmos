Algoritmo tareano5b
	Dimension A[45]
	Dimension B[45]
	Dimension C[45]
	Dimension D1[45]
	Dimension D2[45]
	Dimension suma[45]
//Primero debemos de guardar números aleatorios en dos arreglo para darle un valor a cada subindice de los otros dos arreglos
	para I <- 1 hasta 45 Hacer
		D1[i] <- D1[i] + aleatorio(1,100)
	FinPara
	para I <- 1 hasta 45 Hacer
		D2[i] <- D2[i] + aleatorio(1,100)
	FinPara
//Ahora se guarda cada número en cada subíndice de los primeros números
	para I <- 1 hasta 45 Hacer
		A[i] <- A[I] + D1[I]
	FinPara
//Ahora se guarda cada número en cada subindice de los segundos números
	para I <- 1 hasta 45 Hacer
		B[i] <- B[i] + D2[i]
	FinPara
//Ahora se suman ambos vectores
	para I <- 1 hasta 45 Hacer
		suma[i] <- A[i] + B[i]
	FinPara
//Y se imprimen los resultados
	para I <- 1 hasta 45 Hacer
		Escribir "En el " i " subíndice se tiene la suma de: ", suma[i]
	FinPara
FinAlgoritmo
