Algoritmo practica21b
		Dimension TablaMultiplicacion[5, 10], Multiplicacion[5]
		definir TablaMultiplicacion, Multiplicacion como entero
		//Se tiene una matriz de 5*10 (10 de largo y 5 de ancho) en donde la fila principal es fija  
		// A) 0 con 0, 0 con 1, 0 con 2, 0 con 3 y 0 con 4 son variables dado los valores ingresados en dicha columna mostrar en la matriz A los valores de las multiplicaciones 
		// segun los parametros ingresados en la columna cero 
		// tabla de multiplicar del 1 al 9, los 5 numeros son variables, solo pedirá de entrada los valores variables. Generar matriz donde me calcule la tabla de multiplicar según la tabla elegida (4)
		// B) una vez ingresado los valores de las tablas a calcular, se deberá identificar los múltiplos comunes que comparten 2 o más números 
		// Leer valores para la fila principal de la matriz
		para I <- 0 hasta 4 Hacer
			Escribir "Dame el valor de la fila " I+1
			leer Multiplicacion[I]
		FinPara
		// Llenar la matriz TablaMultiplicacion con los valores ingresados
		para I <- 0 hasta 4 Hacer 
			para J <- 0 hasta 9 Hacer
				TablaMultiplicacion[I, J] <- Multiplicacion[I] * J
			FinPara
		FinPara
		// Se imprimen las tablas de multiplicar que se hayan ingresado
		para I <- 0 hasta 4 Hacer
			Escribir ""
			Escribir "Tabla del " Multiplicacion[I] " de 0 a 9 "
			para J <- 0 hasta 9 Hacer
				Escribir sin saltar "[" TablaMultiplicacion[I, J] "]"
			FinPara
		FinPara
		Escribir ""
		// Ciclo para identificar numeros de comun mulitplo 
		para I <- 0 hasta 3 Hacer
			para J <- I+1 hasta 4 Hacer
				para K <- 0 hasta 9 Hacer
					si TablaMultiplicacion[I,K] == TablaMultiplicacion[J,K] Entonces
						Escribir "Los números " Multiplicacion[I] " y " Multiplicacion[J] " tienen el múltiplo común " TablaMultiplicacion[I,J]
					FinSi
				FinPara
			FinPara
		FinPara
		Escribir ""
FinAlgoritmo

