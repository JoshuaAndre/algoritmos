Algoritmo tareano5a
	// Vector de 5 elementos, imprimir el valor del elemento mayor y la posición, suponiendo que todos los elementos sean distintos 
		Escribir "Ingrese 5 elementos."
		dimension num[5]
		numeromayor <- num[5]
		para I <- 1 hasta 5 con paso 1 hacer 
			Escribir "¿Cuál es el valor del " i " número?"
			leer num[i]
			Si x==1 Entonces
				numeroMayor <- num[i] 
			Sino 
				si num[i] > numeromayor Entonces
				numeromayor <- num[i]
				posicion <- i
			FinSi
			FinSi
		FinPara
		Si (numeromayor >= 1000 y numeromayor <= 5000) Entonces
			para I <- 5 hasta 1 hacer 
			Escribir num[i]
			FinPara
		escribir "Se cumplió la condición, se imprimieron los números del 1000 al 5000 al revés"
		FinSi
		Escribir "El número mayor es: ", numeromayor, " con una posición inicial de: " posicion
		
FinAlgoritmo
