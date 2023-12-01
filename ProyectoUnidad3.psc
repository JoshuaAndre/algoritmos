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
	// grupos, materias, profesores, carrera
	//LISTA DE MATRICES Y VECTORES:
	//Estudiante[100,3] Guarda la información de los estudiantes
	//Profesor[100,2] Guarda la información de los profesores 
	//Carrera[6] Indica la cantidad de carreras y su información
	Definir RespuestaMenu Como Caracter
	Dimension Estudiante[100,3]
	Dimension Carrera[6], Profesor[100,2], Grupo[100,2]
	Carrera[0] <- "LAYGE"
	Carrera[1] <- "ITI"
	Carrera[2] <- "MECATRONICA"
	Carrera[3] <- "ITM"
	Carrera[4] <- "ISA"
	Carrera[5] <- "COMERCIO"
	Escribir "Bienvenido a la UPV"
	Repetir 
		Escribir "¿Qué deseas hacer?"
		Escribir "0. Terminar ejecución"
		Escribir "1. Ingresar un grupo"
		Escribir "2. Ingresar un profesor"
		Escribir "3. Ingresar un estudiante"
		Escribir "7. Verificar estudiantes ingresados"
		//Se crea una estructura segun, donde cada posible respuesta hace algo según lo indicado
		Leer RespuestaMenu
		Segun RespuestaMenu Hacer
			"0": Escribir "Finalizando algoritmo"
			"1": 
				ControlGrupo <- (ControlGrupo + 1)
				Escribir "¿Cual es el numero del grupo?"
					Leer Grupo[ControlGrupo,0]
				Escribir "¿A qué carrera pertenece el grupo?"
					Leer Grupo[ControlGrupo,1]
			"2":	
				Escribir "¿Cuál es el ID del profesor?"
				Leer Profesor[ControlProfesor, 0]
				Escribir "¿Cuál es el nombre del profesor?"
				Leer Profesor[ControlProfesor, 1]
				Escribir "¿A qué grupo pertenece el profesor?"
				Leer Profesor[ControlProfesor, 2]
			"3":
				ControlEstudiante <- (ControlEstudiante + 1)
				Escribir "¿Cuál es el nombre del estudiante?"
					Leer Estudiante[ControlEstudiante,0]
				Escribir "¿A qué grupo pertenece el estudiante?"
					Leer Estudiante[ControlEstudiante,1]
				Escribir "¿Cuál es la carrera del estudiante?"
				Escribir "Lista de carreras:"
				para X <- 0 hasta 5 con paso 1 Hacer
					Escribir Carrera[X]
				FinPara
				Repetir
					Leer Estudiante[ControlEstudiante,2]
					Si  Estudiante[ControlEstudiante,2] <> Carrera[0] o  Estudiante[ControlEstudiante,2] <> Carrera[1] o  Estudiante[ControlEstudiante,2] <> Carrera[2] o  Estudiante[ControlEstudiante,2] <> Carrera[3] o  Estudiante[ControlEstudiante,2] <> Carrera[4] o  Estudiante[ControlEstudiante,2] <> Carrera[5]
					Escribir "Elige una opción válida"	
					FinSi
				Hasta que  Estudiante[ControlEstudiante,2] = Carrera[0] o  Estudiante[ControlEstudiante,2] = Carrera[1] o  Estudiante[ControlEstudiante,2] = Carrera[2] o  Estudiante[ControlEstudiante,2] = Carrera[3] o  Estudiante[ControlEstudiante,2] = Carrera[4] o  Estudiante[ControlEstudiante,2] = Carrera[5]
			"7": 
				Escribir "Lista de estudiantes ingresados:"
					para X <- 1 hasta ControlEstudiante con paso 1 hacer 
						Escribir Estudiante[X, 1] " // " Estudiante[X,2]
					FinPara
			De Otro Modo:
				Escribir "Ingresa una opción válida"
		FinSegun
	Hasta Que  RespuestaMenu = "0"
FinAlgoritmo