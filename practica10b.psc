Algoritmo practica10b
	Escribir "Bienvenido, por favor, introduce la contraseņa (1/2/3)"
	repetir 
		Escribir "Dame la contraseņa"
		leer contraseņa
		Si (contraseņa = 1) o (contraseņa=2) o (contraseņa=3)
			Entonces 
			Escribir "Bienvenido!"
		SiNo
			fallos <- fallos + 1
		FinSi
	Hasta Que (contraseņa=1) o (contraseņa=2) o (contraseņa=3) o (fallos=3)
	Si (fallos = 3)
		Entonces Escribir "Te quedaste sin intentos";
	FinSi

FinAlgoritmo
