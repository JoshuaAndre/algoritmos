Algoritmo practica10
	//Definimos las variables para que el programa tenga menos problemas
    Definir lim1, lim2, n1, suma, fuerasuma, igual1, igual2 Como Entero
	//Definimos todas las variables de entero a 0 para que se puedan contar con facilidad
    lim1 <- 0
    lim2 <- 0
    n1 <- 0
    suma <- 0
    fuerasuma <- 0
    igual1 <- 0
    igual2 <- 0
	//Primero solicitamos por los limites, pedimos el limite 1 antes del repetir para que se nos facilite la accion de dar un numero inferior al primer limite
    Escribir "Dame el l�mite superior"
    Leer lim1
	
    Repetir
        Escribir "Dame el l�mite inferior"
        Leer lim2
    Hasta Que lim1 > lim2
	//Damos la instruccion de que al poner 0 se termine el acceso de numeros, aqui se contar� todo lo soliciado.
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
	//Al final, con lo que hagamos contado, daremos los numeros finales de como quedaron las sumas de las distinas variables
    Escribir "La suma de los n�meros dentro del intervalo es de: ", suma
    Escribir "La cantidad de n�meros fuera del intervalo es de: ", fuerasuma
    Escribir "La cantidad de n�meros con el mismo valor que el l�mite superior es: ", igual1
    Escribir "La cantidad de n�meros con el mismo valor que el l�mite inferior es: ", igual2
FinAlgoritmo
