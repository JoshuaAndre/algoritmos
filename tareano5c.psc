Algoritmo tareano5c
	dimension lista[20]
	Escribir "Existe una lista de 20 números del 1 al 20"
	//Se crea la lista de 20 subíndices con números del 1 al 20
	para X <- 1 hasta 20 hacer 
		lista[X] <- lista[X] + X
	FinPara
	para X <- 1 hasta 20 Hacer
		Escribir lista[X]
	FinPara
	Escribir "Dame un número para buscar"
	leer buscar
	Para x <- 1 hasta 20 Hacer
		Si buscar = lista[x] 
			Entonces
			numerobuscado <-[x]
		FinSi
	FinPara
	Si numerobuscado <= 20 y numerobuscado > 0
		Escribir "El número que buscas se encuentra en el subíndice:" numerobuscado
	SiNo
		escribir "No se ha encontrado"
	FinSi
FinAlgoritmo
