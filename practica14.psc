Algoritmo practica14
	Escribir "�Cu�ntos numeros gusta ingresar?"
	leer n
	dimension num[n]
	numeromayor <- num[n]
	para I <- 1 hasta n con paso 1 hacer 
		Escribir "�Cu�l es el valor de este numero?"
		leer num[i]
		Si num[i] > numeroMayor Entonces
			segundoMayor <- numeroMayor 
			numeroMayor <- num[i] 
		Sino 
		Si num[i] > segundoMayor Entonces
			segundoMayor <- num[i] 
		FinSi
		FinSi
		FinPara
	Escribir "El n�mero mayor es: ", numeromayor
	Escribir "El segundo mayor es: ", segundoMayor
FinAlgoritmo
