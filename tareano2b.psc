Algoritmo tareano2b
	//Primero pedimos qu� nos den un n�mero, para poder trabajar con �l
	Definir numero1 Como Entero
	Escribir "Dame un n�mero"
	Leer numero1
	//S� el n�mero es cero, dar� un error, ya que el cero no es par ni impar
	Si numero1=0 Entonces
		Escribir "Es un n�mero inv�lido, no es par ni impar"
	SiNo
	//En caso de que sea mayor o menor que cero, se dir� s� es par o impar
	Si numero1%2=0 Entonces
		Escribir numero1, " Es un n�mero par"
	SiNo
		Escribir numero1, " Es un n�mero impar"
	FinSi
FinSi
	

	
	
FinAlgoritmo
