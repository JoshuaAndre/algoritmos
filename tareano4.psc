Algoritmo tareano4
	Escribir "�Cu�ntos n�meros gustas ingresar?"
	leer N
	dimension num[N]
	dimension multiplos[N]
	para I <- 1 hasta N Hacer
		Escribir "�Cu�l es el valor de este n�mero?"
		leer num[I]
	FinPara
	contadormultiplos <- 0
	Para i <- 1 hasta N con paso 1 hacer
        Si num[i] MOD 6 = 0 Entonces
            Escribir "El n�mero ", num[i], " es m�ltiplo de 6."
            contadorMultiplos <- contadorMultiplos + 1
        Fin Si
    Fin Para
	Escribir "El total de m�ltiplos de 6 es de: " contadorMultiplos
FinAlgoritmo
