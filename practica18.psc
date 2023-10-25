Algoritmo practica18
	//Cargar en dos arreglos, uno con cantidad de datos y otro con cantidad de votos obtenidos en una elección, imprimir los nombres de los 3 candidatos
	//con mayor cantidad de votos, así mismo deberá identificarse al candidato que no haya obtenido por lo menos el 10% de la votación total
	//para que te mande un mensaje indicando que ese candidato queda fuera de futuras elecciones, se deberá imprimir el arreglo de nombre alfabéticamente de mayor a menor
	//y mayor a menor
	//para el tema del candidato que no haya obtenido el 10% , no revolver las posiciones, cada persona tiene sus votos. No perder de vista el votaje y los nombres
    Dimension Candidatos[10]
    Dimension Votos[10]
	//Se solicita una cantidad de nombres con un límite establecido en 10
    Escribir "Ingresa un nombre en blanco para terminar"
		Cantidad <- 0
			leer nombre
    Mientras nombre <> "" Hacer
        Cantidad <- Cantidad + 1
        Candidatos[Cantidad] <- nombre
        Repetir
	//En caso de que el nombre se repita, no se ingresará 
            leer nombre
            se_repite <- Falso
            para i <- 1 hasta Cantidad Hacer
                si nombre = Candidatos[i] Entonces
                    se_repite <- Verdadero
                FinSi
            FinPara
        Hasta Que NO se_repite
    FinMientras
	//Se dejan de solicitar los nombres
	//Se pregunta por la cantidad de votos de cada candidato
	para X <- 1 hasta Cantidad Hacer
		Escribir "¿Cuantos votos tiene el candidato " candidatos[X] "?"
			leer Votos[X]
			SumaVotos <- SumaVotos + Votos[X]
	FinPara
    // Ordenar candidatos y votos de mayor a menor
    para i <- 1 hasta Cantidad - 1 Hacer
        para j <- i + 1 hasta Cantidad Hacer
            si Votos[i] < Votos[j] Entonces
                // Intercambiar los votos
                aux_votos <- Votos[i]
                Votos[i] <- Votos[j]
                Votos[j] <- aux_votos
                // Intercambiar los candidatos
                aux_candidato <- Candidatos[i]
                Candidatos[i] <- Candidatos[j]
                Candidatos[j] <- aux_candidato
            FinSi
        FinPara
    FinPara
	//Se otorga la lista de mayor a menor, indicando si algun candidato tiene menos del 10% de los votos y por lo tanto es descalificado 
	Escribir "LISTA DE VOTOS DE MAYOR A MENOR"
	para X <- 1 hasta Cantidad Hacer
		Escribir "el candidato " Candidatos[X] " tiene una cantidad de votos de " Votos[X] 
			Si Votos[X] < (SumaVotos*0.10)
				Escribir "el candidato " Candidatos[X] " esta descalificado "
			FinSi
	FinPara
	//Se otorga la lista de menor a mayor, indicando si algun candidato tiene menos del 10% de los votos y por lo tanto es descalificado
		Escribir "LISTA DE VOTOS DE MENOR A MAYOR"
	para X <- Cantidad hasta 1 Hacer
		Escribir "el candidato " Candidatos[X] " tiene una cantidad de votos de " Votos[X]
			Si Votos[X] < (SumaVotos*0.10)
				Escribir "el candidato " Candidatos[X] " esta descalificado "
			FinSi
	FinPara
    // Mostrar los tres candidatos con la mayor cantidad de votos, solo se mostrara si la cantidad de personas ingresadas es igual o mayor a tres
	Si Cantidad >= 3 Entonces
    Escribir "LOS 3 CANDIDATOS CON LA MAYOR CANTIDAD DE VOTOS"
		para i <- 1 hasta 3 Hacer
			Escribir Candidatos[i] " con " Votos[i] " votos"
		FinPara
	FinSi
FinAlgoritmo

