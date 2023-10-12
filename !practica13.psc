Algoritmo practica13
	Escribir "¿Cuántos productos vas a ingresar?"
		leer N
	dimension productos[N] 
	para I <- 1 hasta N con paso 1 hacer
		Escribir "¿Cuál es el costo del " I " producto?"
		Leer productos[I]
		costos <- costos + productos[I]
	FinPara
	para I <- 1 hasta N con paso 1 Hacer
	    Escribir "El costo del producto " I, " es de: ", productos[I]
	FinPara
	Escribir "El costo final de los productos es de: ", costos;
FinAlgoritmo
