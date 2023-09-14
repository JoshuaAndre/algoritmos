Algoritmo practica2d
	definir valor1 Como Entero
	Escribir Sin Saltar "introduce un valor por encima de cero" 
	Leer valor1
	Si (valor1 <= 0) Entonces
		escribir "ERROR FATAL: el número es inferior a cero"
	SiNo
		potencia <- valor1^2
		raiz_cuadrada <- raiz(valor1)
		Escribir "Su potencia es ", potencia
		Escribir "Su raíz cuadrada es: ", raiz_cuadrada
	FinSi
	
FinAlgoritmo
