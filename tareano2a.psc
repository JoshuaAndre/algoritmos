Algoritmo tareano2a
	//Primero preguntamos s� el usuario cuenta con un t�tulo de bachiller
	Definir q1,q2,q3,q4,q5 Como Caracter
	Definir total Como Entero
	total <-0
	Escribir "�Cu�ntas con un titulo de bachiller? (y/n)"
	Leer respuesta
	Si respuesta = "y"
		Entonces Escribir"Felicidades, puedes acceder al curso formativo del bachillerato!";
		//En caso de que no lo tenga, tendremos qu� realizar una prueba de acceso para ver s� puede entrar 
	SiNo
		Si respuesta = "n" entonces escribir "No tienes un t�tulo de bachiller, tendr�s que responder a la siguiente prueba de acceso"
			Escribir "Pregunta 1: Matem�ticas"
			Escribir  "�Cu�l es el resultado de la siguiente ecuaci�n?: 3x + 5 = 14"
			Escribir "A) x=3"
			Escribir "B) x=4"
			leer q1
			si (q1="A") entonces total <- total+20
			SiNo
			total <-total+0
			FinSi
			Escribir "Pregunta 2:Historia"
			Escribir "�Qu� evento hist�rico marc� el comienzo de la primera guerra mundial en 1914?"
			Escribir "A) El asesinato del Archiduque Francisco Fernando de Austria en Sarejevo"
			Escribir "B) El asesinato del Archiduque Papa Francisco II de Austria en Salzburgo"
			leer q2
			si (q2="A")entonces total <-total+20
			SiNo
				total <-total+0
			FinSi
			Escribir "Pregunta 3: Biolog�a"
			Escribir "�Cu�l es la funci�n principal del coraz�n en el sistema circulatorio?"
			Escribir "A) Bombear sangre a trav�s del cuerpo"
			Escribir "B) Sentir sentimientos"
			leer q3
			si (q3="A") entonces total <-total+20
			SiNo
				total <-total+0
			FinSi
			Escribir "Pregunta 4: Literatura"
			Escribir "�Qui�n escribi� la obra Cien a�os de soledad?"
			Escribir "A) Gabriela Garc�a M�rquez"
			Escribir "B) Jos� G�nzalez Mart�nez"
			leer q4
			si (q4="A") entonces total <- total+20
			SiNo
			FinSi
				total <-total+0
				Escribir "Pregunta 5: Geograf�a"
				Escribir "�Cu�l es el r�o m�s largo del mundo?"
				Escribir "A) El r�o Nilo"
				Escribir "B) El r�o amazonas"
				leer q5
				si (q5="A") entonces total <-total+20
			SiNo
				total <-total+0
			FinSi
			
		FinSi
		//S� el resultado fue satisfactorio, se puede acceder, m�s sin embargo, sino lo fue, tendr� que intentar de vuelta"
		FinSi
		Escribir "El total del ex�men fue de: " total
		Si total>=0 Entonces Escribir "Felicidades, puedes acceder al curso formativo de bachillerato!"
		SiNo
			escribir "Lo siento, tendr�s que intentar de vuelta"
		FinSi

	
	
FinAlgoritmo
