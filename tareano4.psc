Algoritmo tareano4
	Escribir "¿Cuántos números gustas ingresar?"
	leer N
	dimension num[N]
	dimension multiplos[N]
	para I <- 1 hasta N Hacer
		Escribir "¿Cuál es el valor de este número?"
		leer num[I]
	FinPara
	contadormultiplos <- 0
	Para i <- 1 hasta N con paso 1 hacer
        Si num[i] MOD 6 = 0 Entonces
            Escribir "El número ", num[i], " es múltiplo de 6."
            contadorMultiplos <- contadorMultiplos + 1
        Fin Si
    Fin Para
	Escribir "El total de múltiplos de 6 es de: " contadorMultiplos
FinAlgoritmo
