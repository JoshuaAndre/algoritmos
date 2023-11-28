Algoritmo ProyectoUnidad3
//Desarrollar un sistema control escolar en donde se deben llevar el control de los siguientes
//módulos:
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
//c. Se debe desarrollar la documentación y tablero en trello con los sprints de entrega, asi mismo
//se debe planificar los entregables parciales así como la entrega final de día 11 de diciembre
	Dimension Estudiante[100,100], Profesor[100], Carrera[100]
	Escribir "Bienvenido a la UPV"
	Repetir 
	Escribir "¿Qué deseas hacer?"
	Escribir "0. Terminar ejecución"
	Escribir "1. Ingresar una carrera"
	Escribir "2. Ingresar un profesor"
	Escribir "3. Ingresar un estudiante"
	//Se crea una estructura segun, donde cada posible respuesta hace algo según lo indicado
	Leer RespuestaMenu
	Segun RespuestaMenu Hacer
		0: Escribir "Finalizando algoritmo"
		1: 
			ControlCarrera <- (ControlCarrera + 1)
			Escribir "¿Cuál es el nombre de la carrera?"
			Leer Carrera[ControlCarrera]
		2:
		3: 
			Si ControlCarrera > 0 Entonces
			ControlEstudiante <- (ControlEstudiante + 1)
			Escribir "¿Cuál es el nombre del estudiante?"
			Leer Estudiante[ControlEstudiante,0]
			Escribir "¿A qué grupo pertenece el estudiante?"
			Leer Estudiante[ControlEstudiante,1]
			Escribir "¿Cuál es la carrera del estudiante?"
			Escribir "Lista de carreras:"
			para X <- 1 hasta ControlCarrera con paso 1 Hacer
				Escribir Carrera[X]
			FinPara
			Mientras Estudiante[ControlEstudiante,2] <> Carrera[1]
				Leer Estudiante[ControlEstudiante,2]
			FinMientras
			SiNo 
				Escribir "No existen carreras todavía"
			FinSi
			De Otro Modo:
			Escribir "Ingresa una opción válida"
	FinSegun
	Hasta Que  RespuestaMenu = 0
FinAlgoritmo
