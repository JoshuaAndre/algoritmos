Algoritmo practica15c
    Dimension pares[10], impares[10]
    Definir numerito, x, continuar Como Entero
    continuar <- 1
	//Se leen los numeros para cada vector, sí son impares se van a los impares y si son pares se van a los pares
    Para x <- 1 Hasta 10 Hacer
	//En caso de que se ingrese el cero, se cancelará el algoritmo al instante
        Si continuar <> 0 Entonces
            Escribir "Dame un número para el subíndice ", x
            Leer numerito
            
            Si numerito = 0 Entonces
                Escribir "Has ingresado 0. El programa ha terminado."
                continuar <- 0
            Sino
                Si numerito mod 2 == 0 Entonces
                    pares[x] <- numerito
                Sino
                    impares[x] <- numerito
                FinSi
            FinSi
        FinSi
    FinPara
	//Al final se imprimen los numeros ingresados en cada vector 
    Escribir "NUMEROS PARES" 
    Para x <- 1 Hasta 10 Hacer
        Si pares[x] <> 0 Entonces
            Escribir pares[x], " en la posición ", x
        FinSi
    FinPara
    Escribir "NUMEROS IMPARES"
    Para x <- 1 Hasta 10 Hacer
        Si impares[x] <> 0 Entonces
            Escribir impares[x], " en la posición ", x
        FinSi
    FinPara
FinAlgoritmo
