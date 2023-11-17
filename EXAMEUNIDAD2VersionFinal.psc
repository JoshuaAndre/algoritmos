Algoritmo EXAMENUNIDAD2Joshua
	//Guarde fecha, el valor del dolar de esa fecha, el dia que tiene el dolar mas barato y el dolar mas caro
	Definir Examen Como Entero
	Escribir "¿De cuantos dias?"
	Leer N
	Dimension Examen[N,3]
	PrecioMayor<- 0
	PrecioMenor<- 9999
	para X <- 0 hasta N -1 Hacer
		Escribir "¿Que dia es?"
		Leer Examen[X,0]
		Escribir "¿Cual es el precio del dolar?"
		Leer Examen[X,1]
		Escribir "Cual es el precio del euro?"
		Leer Examen[X,2]
		Si Examen[X,1]> PrecioMayor Entonces
			PrecioMayor <- Examen[X,1]
			DiaMasAlto <- Examen[X,0]
		FinSi
		Si PrecioMenor>Examen[X,1]
			PrecioMenor <- Examen[X,1]
			DiaMasBajo<- Examen[X,0]
		FinSi
	FinPara
	
	Escribir "El dia " DiaMasAlto " es el dia con el precio mas alto con un precio de " PrecioMayor
	Escribir "El dia " DiaMasBajo " es el dia con el precio mas bajo con un precio de " PrecioMenor
FinAlgoritmo
