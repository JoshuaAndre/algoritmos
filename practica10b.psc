Algoritmo practica10b
	Escribir "Bienvenido, por favor, introduce la contrase�a (1/2/3)"
	repetir 
		Escribir "Dame la contrase�a"
		leer contrase�a
		Si (contrase�a = 1) o (contrase�a=2) o (contrase�a=3)
			Entonces 
			Escribir "Bienvenido!"
		SiNo
			fallos <- fallos + 1
		FinSi
	Hasta Que (contrase�a=1) o (contrase�a=2) o (contrase�a=3) o (fallos=3)
	Si (fallos = 3)
		Entonces Escribir "Te quedaste sin intentos";
	FinSi

FinAlgoritmo
