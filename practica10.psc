Algoritmo practica10
    Definir lim1, lim2, n1, suma, fuerasuma, igual1, igual2 Como Entero
    lim1 <- 0
    lim2 <- 0
    n1 <- 0
    suma <- 0
    fuerasuma <- 0
    igual1 <- 0
    igual2 <- 0
	
    Escribir "Dame el l�mite superior"
    Leer lim1
	
    Repetir
        Escribir "Dame el l�mite inferior"
        Leer lim2
    Hasta Que lim1 > lim2
	
    Repetir
        Escribir "Dame un n�mero (Escribe 0 para terminar)"
        Leer n1
		
        Si n1 <> 0 Entonces
            suma <- suma + n1
			
            Si n1 > lim1 o n1 < lim2 Entonces
                fuerasuma <- fuerasuma + 1
            Fin Si
			
            Si n1 = lim1 Entonces
                igual1 <- igual1 + 1
            SiNo
                Si n1 = lim2 Entonces
                    igual2 <- igual2 + 1
                Fin Si
            Fin Si
        Fin Si
		
    Hasta Que n1 = 0
	
    Escribir "La suma de los n�meros dentro del intervalo es de: ", suma
    Escribir "La cantidad de n�meros fuera del intervalo es de: ", fuerasuma
    Escribir "La cantidad de n�meros con el mismo valor que el l�mite superior es: ", igual1
    Escribir "La cantidad de n�meros con el mismo valor que el l�mite inferior es: ", igual2
FinAlgoritmo
