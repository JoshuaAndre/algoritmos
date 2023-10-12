Algoritmo practica13
	Escribir "¿Cuántos productos vas a ingresar?"
	leer N
	dimension productos[N] 
	para I <- 1 hasta N con paso 1 hacer
		Escribir "¿Cuál es el costo del N producto?"
		Leer productos[N]
		costos <- costos + productos[N]
	FinPara
	Escribir "El costo final de los productos es de: ", costos;

FinAlgoritmo
