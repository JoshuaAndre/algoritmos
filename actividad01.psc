Algoritmo actividad01
		num1 <- 0
		num2 <- 0 
		Escribir "Qué quieres que se haga con ese número?" 
		Escribir "1: Sumar"
		Escribir "2: Multiplicar"
		Escribir "3: Restar"
		Escribir "4: Dividir"
		leer operacion
		Escribir "Escribe los numeros que se utilizarán:"
		Leer num1
		Leer num2
		
		suma = num1 + num2
		resta = num1 - num2
		multi = num1 * num2
		division = num1 / num2
		Si operacion = 1 Entonces
			Escribir "la suma es: " suma
		SiNo
			Si operacion =2 Entonces
				Escribir "la multiplicacion es: " multi
			Sino
				Si operacion = 3 Entonces
					Escribir "la resta es: " resta
				SiNo
					
					Si operacion = 4 Entonces
						Escribir "la division es:" division
					FinSi
				
				FinSi
			FinSi
		FinSi
		
		
FinAlgoritmo


