Algoritmo practica10b
	Escribir "Bienvenido, por favor, introduce la contraseña (1/2/3)"
	repetir 
		Escribir "Dame la contraseña"
		leer contraseña
		Si (contraseña = 1) o (contraseña=2) o (contraseña=3)
			Entonces 
			Escribir "Bienvenido!"
		SiNo
			fallos <- fallos + 1
		FinSi
	Hasta Que (contraseña=1) o (contraseña=2) o (contraseña=3) o (fallos=3)
	Si (fallos = 3)
		Entonces Escribir "Te quedaste sin intentos";
	FinSi

FinAlgoritmo
