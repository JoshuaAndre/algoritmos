Algoritmo practica10e
	definir num Como Entero
	definir res Como Caracter
	numa <- 1
	Repetir
		Escribir "¿Quieres ingresar un número? (Si/No)"
		leer res
			si (res="Si") o (res="si") o (res="sI") o (res="SI") Entonces
			Escribir "¿Cuál número es?"
			leer num
			Si (num < 25) y (num%2==0)
				numa <- (numa * num)
			SiNo
				Si (num > 16) y (num%2<>0)
					numb <- (num + numb)
					
					FinSi
				FinSi
			FinSi
			Si (num%4==0)
				numc <- (numc + num)
				numc2 <- (numc2 + 1)
				
				Si (numa==1) Entonces
					numa <- 0
			FinSi
			FinSi
Hasta que (res = "no") o (res = "nO") o (res = "No") o (res = "NO")
Escribir numc;
Escribir numc2;
	Escribir "La cantidad de numeros pares menores a 25 es de: " numa;
	Escribir "La cantidad de numeros impares mayores a 16 es de: " numb;
	Escribir "El promedio de todos los números de múltiplos de 4 es de: " (numc/numc2);
FinAlgoritmo
