Algoritmo tareano2a
	//Primero preguntamos sí el usuario cuenta con un título de bachiller
	Definir q1,q2,q3,q4,q5 Como Caracter
	Definir total Como Entero
	total <-0
	Escribir "¿Cuéntas con un titulo de bachiller? (y/n)"
	Leer respuesta
	Si respuesta = "y"
		Entonces Escribir"Felicidades, puedes acceder al curso formativo del bachillerato!";
		//En caso de que no lo tenga, tendremos qué realizar una prueba de acceso para ver sí puede entrar 
	SiNo
		Si respuesta = "n" entonces escribir "No tienes un título de bachiller, tendrás que responder a la siguiente prueba de acceso"
			Escribir "Pregunta 1: Matemáticas"
			Escribir  "¿Cuál es el resultado de la siguiente ecuación?: 3x + 5 = 14"
			Escribir "A) x=3"
			Escribir "B) x=4"
			leer q1
			si (q1="A") entonces total <- total+20
			SiNo
			total <-total+0
			FinSi
			Escribir "Pregunta 2:Historia"
			Escribir "¿Qué evento histórico marcó el comienzo de la primera guerra mundial en 1914?"
			Escribir "A) El asesinato del Archiduque Francisco Fernando de Austria en Sarejevo"
			Escribir "B) El asesinato del Archiduque Papa Francisco II de Austria en Salzburgo"
			leer q2
			si (q2="A")entonces total <-total+20
			SiNo
				total <-total+0
			FinSi
			Escribir "Pregunta 3: Biología"
			Escribir "¿Cuál es la función principal del corazón en el sistema circulatorio?"
			Escribir "A) Bombear sangre a través del cuerpo"
			Escribir "B) Sentir sentimientos"
			leer q3
			si (q3="A") entonces total <-total+20
			SiNo
				total <-total+0
			FinSi
			Escribir "Pregunta 4: Literatura"
			Escribir "¿Quién escribió la obra Cien años de soledad?"
			Escribir "A) Gabriela García Márquez"
			Escribir "B) José Gónzalez Martínez"
			leer q4
			si (q4="A") entonces total <- total+20
			SiNo
			FinSi
				total <-total+0
				Escribir "Pregunta 5: Geografía"
				Escribir "¿Cuál es el río más largo del mundo?"
				Escribir "A) El río Nilo"
				Escribir "B) El río amazonas"
				leer q5
				si (q5="A") entonces total <-total+20
			SiNo
				total <-total+0
			FinSi
			
		FinSi
		//Sí el resultado fue satisfactorio, se puede acceder, más sin embargo, sino lo fue, tendrá que intentar de vuelta"
		FinSi
		Escribir "El total del exámen fue de: " total
		Si total>=0 Entonces Escribir "Felicidades, puedes acceder al curso formativo de bachillerato!"
		SiNo
			escribir "Lo siento, tendrás que intentar de vuelta"
		FinSi

	
	
FinAlgoritmo
