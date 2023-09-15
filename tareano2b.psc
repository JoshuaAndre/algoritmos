Algoritmo tareano2b
	//Primero pedimos qué nos den un número, para poder trabajar con él
	Definir numero1 Como Entero
	Escribir "Dame un número"
	Leer numero1
	//Sí el número es cero, dará un error, ya que el cero no es par ni impar
	Si numero1=0 Entonces
		Escribir "Es un número inválido, no es par ni impar"
	SiNo
	//En caso de que sea mayor o menor que cero, se dirá sí es par o impar
	Si numero1%2=0 Entonces
		Escribir numero1, " Es un número par"
	SiNo
		Escribir numero1, " Es un número impar"
	FinSi
FinSi
	

	
	
FinAlgoritmo
