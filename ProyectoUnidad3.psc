Algoritmo ProyectoUnidad3
//Desarrollar un sistema control escolar en donde se deben llevar el control de los siguientes
//m�dulos:
//1. Estudiantes
//2. Carreras
//3. Grupos
//4. Maestros
//5. Pagos
//6. Becas
//Se solicita lo siguiente:
//a. Validar que un estudiante pertenece a una carrera, un grupo, tiene un pago y puede tener
//una beca.
//b. Un profesor pertenece al menos a un grupo
//c. Se debe desarrollar la documentaci�n y tablero en trello con los sprints de entrega, asi mismo
//se debe planificar los entregables parciales as� como la entrega final de d�a 11 de diciembre
	Dimension Estudiante[100,100], Profesor[100], Carrera[100]
	Escribir "Bienvenido a la UPV"
	Repetir 
	Escribir "�Qu� deseas hacer?"
	Escribir "0. Terminar ejecuci�n"
	Escribir "1. Ingresar una carrera"
	Escribir "2. Ingresar un profesor"
	Escribir "3. Ingresar un estudiante"
	//Se crea una estructura segun, donde cada posible respuesta hace algo seg�n lo indicado
	Leer RespuestaMenu
	Segun RespuestaMenu Hacer
		0: Escribir "Finalizando algoritmo"
		1: 
			ControlCarrera <- (ControlCarrera + 1)
			Escribir "�Cu�l es el nombre de la carrera?"
			Leer Carrera[ControlCarrera]
		2:
		3: 
			Si ControlCarrera > 0 Entonces
			ControlEstudiante <- (ControlEstudiante + 1)
			Escribir "�Cu�l es el nombre del estudiante?"
			Leer Estudiante[ControlEstudiante,0]
			Escribir "�A qu� grupo pertenece el estudiante?"
			Leer Estudiante[ControlEstudiante,1]
			Escribir "�Cu�l es la carrera del estudiante?"
			Escribir "Lista de carreras:"
			para X <- 1 hasta ControlCarrera con paso 1 Hacer
				Escribir Carrera[X]
			FinPara
			Mientras Estudiante[ControlEstudiante,2] <> Carrera[1]
				Leer Estudiante[ControlEstudiante,2]
			FinMientras
			SiNo 
				Escribir "No existen carreras todav�a"
			FinSi
			De Otro Modo:
			Escribir "Ingresa una opci�n v�lida"
	FinSegun
	Hasta Que  RespuestaMenu = 0
FinAlgoritmo
