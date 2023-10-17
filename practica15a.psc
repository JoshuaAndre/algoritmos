Algoritmo practica15a
    Dimension corredores[10]
    Dimension tiempos[10]
    Definir repeticiones, x, guardarpromedio, tiempomayor, tiempomenor, segundotiempomenor Como Entero
    Definir corredormayor, corredormenor, corredorsegundo Como Cadena
    repeticiones <- 0
    guardarpromedio <- 0
    tiempomayor <- 0
	//Se inicializan estas 2 variables con un valor exageradamente alto de tal forma que el algoritmo funcione correctamente siempre y cuando los valores entregadas sean menores a 999999
    tiempomenor <- 999999
    segundotiempomenor <- 999999
	//Se solicitan 10 corredores, cada uno con su nombre y su tiempo
    Para x <- 1 hasta 10 Hacer
        repeticiones <- repeticiones + 1
        Escribir sin saltar "¿Cuál es el nombre del corredor ", x, "?"
        Leer corredores[x]
        Escribir sin saltar "¿Cuál es el tiempo del corredor ", x, "?"
        Leer tiempos[x]
        guardarpromedio <- guardarpromedio + tiempos[x]
        // Verificar el corredor con el tiempo más alto
        Si tiempos[x] > tiempomayor Entonces
            tiempomayor <- tiempos[x]
            corredormayor <- corredores[x]
        FinSi
        // Verificar tiempos más bajos
        Si tiempos[x] < tiempomenor Entonces
            segundotiempomenor <- tiempomenor
            tiempomenor <- tiempos[x]
		// Verificar corredor con el tiempo menor
            corredorsegundo <- corredormenor
            corredormenor <- corredores[x]
        Sino 
			Si tiempos[x] < segundotiempomenor Entonces
				segundotiempomenor <- tiempos[x]
				corredorsegundo <- corredores[x]
			FinSi
		FinSi
		FinPara
		promedio <- guardarpromedio / repeticiones
		Escribir "PRIMER LUGAR"
		Escribir "El corredor con el tiempo más bajo es ", corredormenor, " con ", tiempomenor, " unidades de tiempo."    
		Escribir "SEGUNDO LUGAR"
		Escribir "El corredor con el segundo tiempo más bajo es ", corredorsegundo, " con ", segundotiempomenor, " unidades de tiempo."
		Escribir "ULTIMO LUGAR"
		Escribir "El corredor con el tiempo más alto es ", corredormayor, " con ", tiempomayor, " unidades de tiempo."
		Escribir "PROMEDIO"
		Escribir "El promedio de tiempo de la carrera es de: ", promedio, " unidades de tiempo."
FinAlgoritmo
