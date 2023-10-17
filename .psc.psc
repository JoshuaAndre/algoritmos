Algoritmo practica15b
	definir leido, num, x, z, diferente como entero
	dimension num[10]
	//Se soilcitan los 10 numeros
	Escribir "Escribe 10 numeros enteros distintos, por favor."
	para x <- 1 hasta 10 Hacer
		Repetir
			escribir "Dame el número ", x;
			leer leido
	//Se comparan los numeros, buscando que nunca se repitan
			para z <- 1 hasta x Hacer
				si num[z] <> 0 Entonces
					si leido = num[z] Entonces
						escribir "EL NUMERO YA ESTÁ INGRESADO, ESCOGE UNO DIFERENTE"
						diferente <- 1
						z <- x 
					SiNo
						diferente <- 0 
						si x = z Entonces
							num[z] <- leido
						FinSi
					FinSi
				SiNo
					si x = z Entonces
						num[z] <- leido
					FinSi
				FinSi
			FinPara
		Hasta Que diferente = 0
	FinPara
	//Se escribe la lista de los numeros ingresados
	Escribir "Los numeros ingresados son: "
	para z <- 1 hasta 10 Hacer
		escribir num[z] " en la posición " z
	FinPara
FinAlgoritmo
