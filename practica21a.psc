Algoritmo practica21a
	//Se tiene una matriz de 4x4
	//1) Llenar la matriz con valores enteros aleatorios entre 1 y el 100 e imprimirla
	//2) Encontrar el valor máximo y mínimo de la matriz y mostrarlos en pantalla e indicar en que posición se encuentra 
	//3) Calcular la suma de los elementos de la diagonal principal de la matriz y mostrar su resultado en pantalla y tambien elevandolo al cuadrado e imprimirlo
	//4) Calcular la suma de los elementos que están por encima de la diagonal de la matriz y mostrar el resultado en pantalla 
	Dimension Matriz[4,4], Posicion[4,4]
	Definir PosicionValorMaximo, PosicionValorMinimo, ValorMinimo, ValorMaximo Como Real
	//Se define una matriz en donde se remarca cada valor aleatorio de cada numero y el numero de su posicion
	para I <- 0 hasta 3 con paso 1 Hacer
		para J <- 0 hasta 3 con paso 1 Hacer
			Posicionamiento <- Posicionamiento + 1
			Matriz[I,J] <- Aleatorio(1,100)	
			Posicion[I,J] <- Posicionamiento
		FinPara
	FinPara
	Escribir "[ ] = Valor del numero"
	Escribir "( ) = Posicion del numero"
	//Se escribe la matriz con su posicionamiento y su valor correspondiente
	para I <- 0 hasta 3 con paso 1 hacer 
		Escribir ""
		para J <- 0 hasta 3 con paso 1 Hacer
			Escribir sin saltar "(" Posicion[I,J] ")" "[" Matriz[I,J] "]"
		FinPara
	FinPara
	//Se vuelve a leer cada valor y se define cual es el valor minimo y cual es el valor maximo
	para I <- 0 hasta 3 con paso 1 Hacer
		para J <-0 hasta 3 con paso 1 hacer
			//Conseguir el valor maximo
		Si ValorMaximo < Matriz[I,J]
			Entonces 
			ValorMaximo <- Matriz[I,J]
			PosicionValorMaximo <- Posicion[I,J]
		FinSi	
	//Conseguir el valor minimo
			Si Matriz[I,J] < ValorMinimo o J == 0 
				Entonces 
                ValorMinimo <- Matriz[I,J]
				PosicionValorMinimo <- Posicion[I,J]
			FinSi
		FinPara
	FinPara
	//Se hace la suma de los elementos y se indica la diagonal del mismo
	SumaElementosEncimaDiagonal <- (Matriz[0,1] + Matriz[0,2] + Matriz[0,3]+ Matriz[1,2] + Matriz[1,3] + Matriz[2,3])
	DiagonalPrincipal <- (Matriz[0,0] + Matriz[1,1] + Matriz[2,2] + Matriz[3,3])
	//Se entrega toda la información solicitada en los incisos 
	Escribir ""
	Escribir "INFORMACION"
	Escribir "La suma de la diagonal principal es de de: " DiagonalPrincipal
	Escribir DiagonalPrincipal " elevado al cuadrado es: " DiagonalPrincipal*DiagonalPrincipal 
	Escribir "La suma de los elementos por encima de la diagonal principal es de: " SumaElementosEncimaDiagonal
	Escribir "El valor minimo es de: [" ValorMinimo "] en la posicion (" PosicionValorMinimo ")"
	Escribir "El valor máximo es de: [" ValorMaximo "] en la posicion (" PosicionValorMaximo ")"
FinAlgoritmo
