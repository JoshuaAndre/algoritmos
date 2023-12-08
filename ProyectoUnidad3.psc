Algoritmo ProyectoUnidad3
	// Desarrollar un sistema control escolar en donde se deben llevar el control de los siguientes
	// m�dulos:
	// 1. Estudiantes
	// 2. Carreras
	// 3. Grupos
	// 4. Maestros
	// 5. Pagos
	// 6. Becas
	// Se solicita lo siguiente:
	// a. Validar que un estudiante pertenece a una carrera, un grupo, tiene un pago y puede tener
	// una beca.
	// b. Un profesor pertenece al menos a un grupo
	// c. Se debe desarrollar la documentaci�n y tablero en trello con los sprints de entrega, as� mismo
	// se debe planificar los entregables parciales as� como la entrega final de d�a 8 de diciembre
	// grupos, materias, profesores, carrera
	//Se definen como caracter las respuestas de los men�s, funcionan como validaci�n ya que aceptan cualquier tipo de car�cter pero si no son alguno de los indicados, lo rechaza y vuelve a pedir
	Definir RespuestaMenu, RespuestaMenuGrupos, RespuestaMenuPagos Como Caracter
	Dimension Estudiante[100, 7]
	Dimension Carrera[6], Profesor[100, 4], Grupo[100, 2]
	Carrera[0] <- "LAYGE"
	Carrera[1] <- "ITI"
	Carrera[2] <- "MECATRONICA"
	Carrera[3] <- "ITM"
	Carrera[4] <- "ISA"
	Carrera[5] <- "COMERCIO"
	// Inicializaci�n de variables y definici�n de cada una de ellas 
	Definir ControlGrupo, ControlProfesor, ControlEstudiante, EstudiantesPagados, ControlIngresos Como Entero
	ControlGrupo <- 0
	ControlProfesor <- 0
	ControlEstudiante <- 0
	EstudiantesPagados <- 0
	ControlIngresos <- 0
	Escribir "Bienvenido a la UPV"
	Escribir "Men� principal"
	Escribir "�Feliz navidad, profesor!"
	Repetir 
		Escribir " ////////////////////////// " 
		Escribir "�Qu� deseas hacer?"
		Escribir "0. Terminar ejecuci�n"
		Escribir "1. Ingresar un grupo"
		Escribir "2. Ingresar un profesor"
		Escribir "3. Ingresar un estudiante"
		Escribir "4. Control de pagos (SUBMEN� I)"
		Escribir "5. Construcci�n de grupos (SUBMEN� II)"
		Escribir "6. Verificaci�n de grupos construidos"
		Escribir "7. Verificaci�n de grupos ingresados"
		Escribir "8. Verificaci�n de estudiantes ingresados"
		Escribir "9. Verificaci�n de profesores ingresados" 
		Escribir "10. DEBUGGER" 
		//Se crea una estructura segun principal, donde cada posible respuesta hace algo seg�n lo indicado
		Leer RespuestaMenu
		Segun RespuestaMenu Hacer
			"0": Escribir "Finalizando algoritmo..."
				//Ingreso de informaci�n de los grupos
			"1": 
				ControlGrupo <- (ControlGrupo + 1)
				Escribir "�Cual es el identificador del grupo?"
				Repetir 
					Leer Grupo[ControlGrupo,0]
					Si Grupo[ControlGrupo,0] = "" Entonces
						Escribir "Ingresa una opci�n v�lida"
					FinSi
				Hasta que Grupo[ControlGrupo,0] <> ""
				Escribir "�A qu� carrera pertenece el grupo?"
				Escribir "Lista de carreras:"
				para X <- 0 hasta 5 con paso 1 Hacer
					Escribir Carrera[X]
				FinPara
				Repetir 
					Leer Grupo[ControlGrupo,1]
					Si Grupo[ControlGrupo,1] = "" Entonces
						Escribir "Ingresa una opci�n v�lida"
					FinSi
				Hasta que Grupo[ControlGrupo,1] <> ""
				Escribir "Grupo ingresado con �xito, identificador: " Grupo[ControlGrupo,0] " carrera: " Grupo[ControlGrupo,1]
			//Ingreso de la informaci�n de los profesores
			"2":	
				ControlProfesor <- (ControlProfesor + 1) 
				Escribir "�Cu�l es el matricula del profesor?"
				Repetir
					Leer Profesor[ControlProfesor, 0]
					Si Profesor[ControlProfesor, 0] = "" Entonces
						Escribir "Ingresa una opci�n v�lida"
					FinSi
				Hasta que Profesor[ControlProfesor, 0] <> ""
				Escribir "�Cu�l es el nombre del profesor?"
				Repetir 
					Leer Profesor[ControlProfesor, 1]
					Si Profesor[ControlProfesor, 1] = "" Entonces
						Escribir "Ingresa una opci�n v�lida"
					FinSi
				Hasta que Profesor[ControlProfesor, 1] <> "" 
				Escribir "Profesor n�mero " ControlProfesor " ingresado con �xito, ID: " Profesor[ControlProfesor, 0] " nombre del profesor: " Profesor[ControlProfesor, 1] 
			//Ingreso de la informaci�nde los estudiantes 
			"3":
				ControlEstudiante <- (ControlEstudiante + 1)
				Escribir "�Cu�l es el nombre del estudiante?"
				Repetir
					Leer Estudiante[ControlEstudiante,0]
					Si Estudiante[ControlEstudiante,0] = "" Entonces
						Escribir "Ingresa una opci�n v�lida"
					FinSi
				Hasta que  Estudiante[ControlEstudiante,0] <> ""
				Escribir "�Cu�l es la carrera del estudiante? ( Ingresa una de las siguientes opciones )"
				Escribir "Lista de carreras:"
				para X <- 0 hasta 5 con paso 1 Hacer
					Escribir Carrera[X]
				FinPara
					Repetir	
						Leer Estudiante[ControlEstudiante, 1]
					Hasta que (Estudiante[ControlEstudiante, 1] = Carrera[0]) o (Estudiante[ControlEstudiante, 1] = Carrera[1]) o (Estudiante[ControlEstudiante, 1] = Carrera[2]) o (Estudiante[ControlEstudiante, 1] = Carrera[3]) o (Estudiante[ControlEstudiante, 1] = Carrera[4]) o (Estudiante[ControlEstudiante, 1] = Carrera[5])
				Escribir "El estudiante " Estudiante[ControlEstudiante, 0] " tiene una beca? ( Si / No )" 
				Repetir
				//Dependiendo de la respuesta de s� tiene una beca, se escribe la respuesta del pago, en donde si tiene una beca se entiende que ya tiene un pago y viceversa por lo que ya no se pregunta
					Leer Estudiante[ControlEstudiante,2] 
				Hasta que Estudiante[ControlEstudiante,2] = "Si" o Estudiante[ControlEstudiante,2] = "No"
				Si Estudiante[ControlEstudiante,2] = "Si" Entonces
					Estudiante[ControlEstudiante,3] <- "Si"
				FinSi
				Si Estudiante[ControlEstudiante,2] = "No" Entonces
					Escribir "El estudiante ha pagado su inscripci�n? ( Si / No ) "
					Repetir
						Leer Estudiante[ControlEstudiante, 3]
					Hasta que Estudiante[ControlEstudiante,3] = "Si" o Estudiante[ControlEstudiante,3] = "No"
				SiNo
					Estudiante[ControlEstudiante, 3] <- "Si"
				FinSi
				Escribir "�Cual es la matricula del estudiante? "
				Repetir
					Leer Estudiante[ControlEstudiante, 4] 
					Si Estudiante[ControlEstudiante, 4] = ""
						Escribir "Ingresa una opci�n v�lida"
					FinSi
				Hasta que Estudiante[ControlEstudiante, 4]  <> ""
				Escribir "Estudiante ingresado con �xito, matricula del estudiante: " Estudiante[ControlEstudiante,4] " // Nombre del estudiante: " Estudiante[ControlEstudiante,0] " // carrera del estudiante: " Estudiante[ControlEstudiante,1] " // estado de beca: " Estudiante[ControlEstudiante, 2] " // estado de inscripci�n pagada: " Estudiante[ControlEstudiante, 3] 
			"4": 
				//Se entra al primer submen�, donde se verifican pagos y se realizan
				Repetir
				Escribir " ////////////////////////// " 
				Escribir "Men� de control de pagos" 
				Escribir "0. Volver al men� principal"
				Escribir "1. Verificar pagos "
				Escribir "2. Realizar un pago "
				Leer RespuestaMenuPagos
				Segun RespuestaMenuPagos Hacer
					//Se verifican los estudiantes y su estado de pago y beca 
					"1": 
						Escribir "ESTUDIANTE // BECA // PAGO " 
						para X <- 1 hasta ControlEstudiante con paso 1 hacer
							Escribir Estudiante[X,0]," // " Estudiante[X,2], " // " Estudiante[X,3]
						FinPara
					//Se verifican los estudiantes que no tengan pago, si se detecta alguno, se da la opci�n a pagar 
					"2":
						Escribir "Verificando estudiantes sin pagos: "
							para X <- 0 hasta ControlEstudiante con paso 1 Hacer
								Si Estudiante[X,3] = "No" Entonces
									Escribir "El estudiante " Estudiante[X, 0] " no tiene un pago "
									Escribir "�Gusta pagar? "
									Repetir
										Leer Estudiante[X,3] 
									Hasta Que Estudiante[X,3] = "Si" o Estudiante[X,3] = "No"
								FinSi
							Finpara
					"0": 
						Escribir "Regresando..."
					De otro modo:
						Escribir "Ingresa una opci�n v�lida"
				FinSegun
			Hasta que RespuestaMenuPagos = "0"
			//S�lo permite el acceso si se ha entrado antes a las dem�s opciones, o sea que haya al menos un ingreso de cada una 
					"5": Si ControlGrupo > 0 y ControlEstudiante > 0 y ControlProfesor > 0 Entonces
				Repetir
						Escribir "0. Regresar al men� principal"
						Escribir "1. Agregar un maestro a un grupo "
						Escribir "2. Agregar alumnos a un grupo "
					Leer RespuestaMenuGrupos
					Segun RespuestaMenuGrupos Hacer
						"1": 
						//Para ingresar profesores, se solicita el identificador del grupo que tiene que coincidir y se hace la comparativa despu�s 
							ControlIngresos <- ControlIngresos + 1
							Escribir "Cual es el identificador del grupo?"
							Escribir "Lista de identificadores de grupos: "
							para X <- 1 hasta ControlGrupo con paso 1 Hacer
								Escribir Grupo[X,0]
							FinPara
							Repetir
								Leer Profesor[ControlProfesor, 2] 
								Si Profesor[ControlProfesor, 2] = "" Entonces
									Escribir "Ingresa una opci�n v�lida"
								FinSi
							Hasta que Profesor[ControlProfesor, 2]  <> ""
							Escribir "�Cu�l es la matr�cula del profesor?"
							Escribir "Lista de profesores y sus matriculas"
							para X <- 1 hasta ControlProfesor con paso 1 Hacer
								Escribir Profesor[X,1] " // " Profesor[X,0]
							FinPara
							Repetir
								Leer Profesor[ControlProfesor, 3] 
								Si Profesor[ControlProfesor, 3]  = "" Entonces
									Escribir "Ingresa una opci�n v�lida"
								FinSi
							Hasta Que Profesor[ControlProfesor, 3]  <> ""
						"2":
						//Se ingresan alumnos, se pide el identificador del grupo y seg�n el mismo se guarda la informaci�n para despu�s compararla 
							ControlIngresos <- ControlIngresos + 1 
							Escribir "Cual es el identificador del grupo?"
							Escribir "Lista de identifiadores de grupos: "
							para X <- 1 hasta ControlGrupo con paso 1 Hacer
								Escribir Grupo[X,0]
							FinPara
							Repetir 
								Leer Estudiante[ControlEstudiante, 5] 
								Si Estudiante[ControlEstudiante, 5] = "" Entonces
									Escribir "Ingresa una opci�n v�lida"
								FinSi
							Hasta que Estudiante[ControlEstudiante, 5] <> ""
							Escribir "Lista de alumnos con un pago: " 
							para X <- 1 hasta ControlEstudiante con paso 1 Hacer
								Si Estudiante[X,3] = "Si" Entonces
									Escribir Estudiante[X,0]
								FinSi
							FinPara
							Escribir "Que alumno gustas a�adir al grupo?"
							Repetir
								Leer Estudiante[ControlEstudiante, 6]
								Si Estudiante[ControlEstudiante, 6] = "" Entonces
									Escribir "Ingresa una opci�n v�lida"
								FinSi
							Hasta que Estudiante[ControlEstudiante, 6] <> ""
						De Otro Modo:
							Escribir "Ingresa una opci�n v�lida."
					FinSegun
				Hasta que RespuestaMenuGrupos = "0"
			SiNo
				Escribir "Para acceder a la construcci�n de grupos, necesitas al menos un grupo ingresado, un estudiante y un profesor"
			FinSi
			//Se hace una comparasi�n para ver si se ingres� alg�n maestro o alumno al grupo para verificar s� ha cambiado
			"6":	
				Si ControlIngresos > 0 Entonces 
					Escribir "Lista de identificadores de grupos: "
					para X <- 1 hasta ControlGrupo con paso 1 Hacer
						Escribir Grupo[X,0]
					FinPara
					Leer VerificacionGrupo
					Si VerificacionGrupo = Profesor[ControlProfesor, 2] Entonces
				Escribir "Grupo: " VerificacionGrupo
				Escribir "PROFESORES"
				para X <- 1 hasta ControlProfesor con paso 1 Hacer
					Si Grupo[X,0] = Profesor[X, 2] Entonces
						Escribir Profesor[X, 1] " est� en el grupo " Grupo[X,0]
					FinSi
				FinPara
				Escribir "ALUMNOS" 
				para X <- 1 hasta ControlEstudiante con paso 1 Hacer
					Si Grupo[X,0] = Estudiante[X, 5] Entonces
						Escribir Estudiante[X, 0] " est� en el grupo " Grupo[X,0]
					FinSi
				FinPara
			SiNo
				Escribir "Ese identificador de grupo no existe"
			FinSi
			SiNo
				Escribir "No existen grupos formados todav�a"
			FinSi
			//Se imprimen los grupos que se han ingresado 
			"7": 
			Si ControlGrupo > 0 Entonces
				Escribir "Lista de grupos ingresados: " 
				Para X <- 1 hasta ControlGrupo con paso 1 Hacer
					Escribir Grupo[ControlGrupo,0] " // " Grupo[ControlGrupo,1] 
				FinPara
			SiNo
				Escribir "No hay grupos ingresados"
			FinSi	
			//Se imprimen los estudiantes ingresados, con sus estados de beca y pago 
			"8": 
				Si ControlEstudiante > 0 Entonces
				Escribir "Lista de estudiantes ingresados:"
				para X <- 1 hasta ControlEstudiante con paso 1 hacer 
					Escribir Estudiante[X, 0] " // " Estudiante[X,1] " // Estado de beca: " Estudiante[X,2] " // Estado de pago: " Estudiante[X,3]
				FinPara
					SiNo
						Escribir "No hay estudiantes ingresados"
					FinSi
			//Se imprimen todos los profesores ingresados, para su rapido acceso 
			"9":
				Si ControlProfesor > 0 Entonces 
				Escribir "Lista de profesores ingresados:"
				para X <- 1 hasta ControlProfesor con paso 1 hacer 
					Escribir Profesor[ControlProfesor, 0] 
				FinPara
					SiNo
						Escribir "No hay profesores ingresados"
					FinSi
					//Opci�n de conteo de las veces que se ha ingresado a cada caso de control
					// DEBUGGER
			"10":
				Escribir "ControlEstudiante: " ControlEstudiante
				Escribir "ControlProfesor: " ControlProfesor
				Escribir "ControlGrupo: " ControlGrupo
			De Otro Modo:
				Escribir "Ingresa una opci�n v�lida"
		FinSegun
	Hasta Que  RespuestaMenu = "0"
FinAlgoritmo