Algoritmo ControlAccesoGym
	// validación de variables
	Definir totalRecaudado Como Real
	Definir nombre Como Cadena
	Definir socios, opcio, opcionSocios, opcionServicio, edad, sexo, numero_mes, numero_clase, consulta Como Entero
	// Inicialización de variables
	socios <- 0
	clases <- ''
	hombre_b <- 0
	mujer_b <- 0
	hombre_e <- 0
	mujer_e <- 0
	hombre_m <- 0
	mujer_m <- 0
	tot_agosto <- 0
	tot_septiembre <- 0
	tot_octubre <- 0
	c_baile <- 0
	c_entrenamiento <- 0
	c_masajes <- 0
	edad_baile <- 0
	edad_entrenamiento <- 0
	edad_masajes <- 0
	// Menú principal
	Repetir
		Escribir 'Menú de opciones:'
		Escribir '1. Servicios'
		Escribir '2. Socios'
		Escribir '3. Consultas'
		Escribir '4. Salir'
		Leer opcio
		// condicion para acceder a alguna parte del menú dependiendo de la opción elegida
		Si opcio=1 Entonces
			Escribir 'Servicios:'
			Escribir '1. Clases de baile'
			Escribir '2. Otros servicios'
			Leer opcionServicio
			// si elige la opcion uno mostrar las clases de baile
			Si opcionServicio=1 Entonces
				Escribir 'Ofrecemos clases de salsa y bachata.'
			FinSi
			// si elige la opción 2 mostrar Otros servicios
			Si opcionServicio=2 Entonces
				Escribir 'Otros servicios disponibles: entrenamiento personal y masajes.'
			FinSi
			// si selecciona un numero no valido entonces mostrar mensaje de error
			Si opcionServicio>2 Entonces
				Escribir 'Introduzca una opción valida'
			FinSi
		FinSi
		// condicion para acceder a la opción Socios
		Si opcio=2 Entonces
			Escribir 'Socios:'
			Escribir '1. Registrar nuevo socio'
			Escribir '2. Ver información de socios'
			Leer opcionSocios
			// si elige la opcion 1 entonces registramos un socio
			Si opcionSocios=1 Entonces
				Escribir 'Introducir nombre:'
				Leer nombre
				Escribir 'Ingresar edad'
				Leer edad
				Escribir 'Ingrese el sexo segun el numero. 1).Hombre 2)Mujer'
				Leer sexo
				Escribir 'Numero de mes en que se registra:'
				Leer numero_mes
				Escribir 'Ingrese numero de clase a la que quiere ingresar'
				Escribir '1) Clases de baile $100'
				Escribir '2) Entrenamiento personal $120'
				Escribir '3) Masajes $150'
				Leer numero_clase
				// si numero de clase es 1 entonces eligio Baile
				Si numero_clase=1 Entonces
					// si el mes es 8 entonces acumulamos el costo de dicha clase (baile $100)
					Si numero_mes=8 Entonces
						tot_agosto <- tot_agosto+100
					FinSi
					// si el mes es 10 entonces acumulamos el costo de dicha clase (baile $100)
					Si numero_mes=9 Entonces
						tot_septiembre <- tot_septiembre+100
					FinSi
					// si el mes es 10 entonces acumulamos el costo de dicha clase (baile $100)
					Si numero_mes=10 Entonces
						tot_octubre <- tot_octubre+100
					FinSi
					// contador y contador de edad
					c_baile <- c_baile+1
					edad_baile <- edad_baile+edad
					// condición para si es mujer o hombre aumentar en +1 su valor respectivamente
					Si sexo=1 Entonces
						hombre_b <- hombre_b+1
					SiNo
						mujer_b <- mujer_b+1
					FinSi
				FinSi
				// si numero de clase es 2 entonces eligió Entrenamiento
				Si numero_clase=2 Entonces
					// si el mes es 8 entonces acumulamos el costo de dicha clase (baile $120)
					Si numero_mes=8 Entonces
						tot_agosto <- tot_agosto+120
					FinSi
					// si el mes es 8 entonces acumulamos el costo de dicha clase (baile $120)
					Si numero_mes=9 Entonces
						tot_septiembre <- tot_septiembre+120
					FinSi
					// si el mes es 8 entonces acumulamos el costo de dicha clase (baile $120)
					Si numero_mes=10 Entonces
						tot_octubre <- tot_octubre+120
					FinSi
					// contador y contador de edad
					c_entrenamiento <- c_entrenamiento+1
					edad_entrenamiento <- edad_entrenamiento+edad
					// condición para si es mujer o hombre aumentar en +1 su valor respectivamente
					Si sexo=1 Entonces
						hombre_e <- hombre_e+1
					SiNo
						mujer_e <- mujer_e+1
					FinSi
				FinSi
				// si numero de clase es 3 entonces eligió masaje
				Si numero_clase=3 Entonces
					// si el mes es 8 entonces acumulamos el costo de dicha clase (baile $150)
					Si numero_mes=8 Entonces
						tot_agosto <- tot_agosto+150
					FinSi
					// si el mes es 8 entonces acumulamos el costo de dicha clase (baile $150)
					Si numero_mes=9 Entonces
						tot_septiembre <- tot_septiembre+150
					FinSi
					// si el mes es 8 entonces acumulamos el costo de dicha clase (baile $150)
					Si numero_mes=10 Entonces
						tot_octubre <- tot_octubre+150
					FinSi
					// contador y contador de edad
					c_masajes <- c_masajes+1
					edad_masajes <- edad_masajes+edad
					// condición para si es mujer o hombre aumentar en +1 su valor respectivamente
					Si sexo=1 Entonces
						hombre_m <- hombre_m+1
					SiNo
						mujer_m <- mujer_m+1
					FinSi
				FinSi
				// Registro de nuevo socio
				socios <- socios+1
				Escribir 'Socio registrado correctamente.'
			FinSi
			// condicion para mostrar información de socios
			Si opcionSocios=2 Entonces
				// Mostrar información de socios
				Escribir 'Número de socios: ', socios
			FinSi
			// en caso de haber introducido un numero mayor a dos, dar mensaje de error
			Si opcionSocios>2 Entonces
				Escribir 'Introduzca una opción valida'
			FinSi
		FinSi
		// condicion para acceder a la opción Consultas
		Si opcio=3 Entonces
			// las siguientes 3 condiciones "si" son para indicar que si en alguna clase no hubo alumnos su promedio sera de 0, asi 
			// evitamos el error de division por cero
			Si c_baile=0 Entonces
				promedio_edad_baile <- 0
			SiNo
				promedio_edad_baile <- edad_baile/c_baile
			FinSi
			Si c_entrenamiento=0 Entonces
				promedio_edad_entrenamiento <- 0
			SiNo
				promedio_edad_entrenamiento <- edad_entrenamiento/c_entrenamiento
			FinSi
			Si c_masajes=0 Entonces
				promedio_edad_masajes <- 0
			SiNo
				promedio_edad_masajes <- edad_masajes/c_masajes
			FinSi
			// total recaudado es igual a la suma recaudada de los 3 ultimos meses
			totalRecaudado <- tot_agosto+tot_septiembre+tot_octubre
			// menú de opciones para el apartado consultas
			Escribir 'Consultas:'
			Escribir '1. Cuántos socios por edad en cada clase(promedio)'
			Escribir '2. Socios por sexo en cada clase'
			Escribir '3. Total recaudado en los últimos meses (por cada mes)'
			Leer consulta
			// si eligio el 1 entonces mostramos los socios en cada clase y promedio de edad
			Si consulta=1 Entonces
				Escribir 'Hay ', c_baile, ' socios en la clase de baile con un promedio de edad de ', promedio_edad_baile
				Escribir 'Hay ', c_entrenamiento, ' socios en la clase de baile con un promedio de edad de ', promedio_edad_entrenamiento
				Escribir 'Hay ', c_masajes, ' socios en la clase de baile con un promedio de edad de ', promedio_edad_masajes
			FinSi
			// si eligió el 2 entonces mostramos cantidad de hombres y mujeres por clase
			Si consulta=2 Entonces
				Escribir 'Hay ', hombre_b, ' hombres y ', mujer_b, ' mujeres en la clase de baile'
				Escribir 'Hay ', hombre_e, ' hombres y ', mujer_e, ' mujeres en la clase de entrenamiento'
				Escribir 'Hay ', hombre_m, ' hombres y ', mujer_m, ' mujeres en la clase de masaje'
			FinSi
			// si eligió 3 entonces mostramos el total recaudado en cada uno de los ultimos meses y su suma total
			Si consulta=3 Entonces
				Escribir 'El total recaudado en el mes de Agosto fue: $', tot_agosto
				Escribir 'El total recaudado en el mes de Septiembre fue: $', tot_septiembre
				Escribir 'El total recaudado en el mes de Octubre fue: $', tot_octubre
				Escribir 'El total recaudado en los ultimos meses es de: $', totalRecaudado
			FinSi
			// si ingresa una opción invalida mostrar mensaje de error
			Si consulta>3 Entonces
				Escribir 'Introduzca una opción valida'
			FinSi
		FinSi
		// si elige la opcion 4 de el primer menú entonces salir del programa
		Si opcio=4 Entonces
			Escribir 'Saliendo del programa...'
		FinSi
		Si opcio>4 Entonces
			// si elige una opción ivalida entonces mensaje de error
			Escribir 'Opción no válida. Por favor, seleccione una opción válida.'
		FinSi
	Hasta Que opcio=4
FinAlgoritmo
