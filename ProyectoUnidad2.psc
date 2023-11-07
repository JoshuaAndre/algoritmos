Algoritmo ProyectoUnidad2
	Dimension Proveedor[100,6], Cliente[100,6]
	Escribir "Bienvenido a DevSoft"
	//Menu inicial para el control del algoritmo, se repetira hasta que el usuario lo considere
	Repetir
		Escribir "Ingresa un numero del 0 al 6 para realizar una acción"
		Escribir "0 - Terminar algoritmo "
		Escribir "1 - Ingresar un proveedor "
		Escribir "2 - Ingresar un cliente "
	Leer RespuestaMenuInicial
	Segun RespuestaMenuInicial Hacer
		//Terminacion del uso del algoritmo
		0: Escribir "Fin del algoritmo"
		//Ciclo de ingreso de un proveedor 
		1: 
					Escribir "Ingresa la ID del proveedor"
					leer Proveedor[0,0]
					Escribir "Ingresa el nombre del proveedor"
					leer Proveedor[0,1]
					Escribir "Ingresa la empresa del proveedor"
					Leer Proveedor[0,2]
					Escribir "Ingresa el numero de telefono del proveedor"
					Leer proveedor[0,3]
					Escribir "Ingresa el correo del proveedor"
					Leer proveedor[0,4]
					Escribir "Ingresa el domicilio del proveedor"
					Leer Proveedor[0,5]
					Escribir Proveedor[0,0]
					Escribir Proveedor[0,1]
					Escribir Proveedor[0,2]
					Escribir Proveedor[0,3]
					Escribir Proveedor[0,4]
					Escribir Proveedor[0,5]
			//Ciclo de ingreso de un cliente
				2: 
					Escribir "Ingresa la ID del cliente"
					Leer cliente[0,0]
					Escribir "Ingresa el nombre del cliente"
					Leer cliente[0,1]
					Escribir "Ingresa la empresa del cliente"
					Leer cliente[0,2]
					Escribir "Ingresa el telefono del cliente"
					Leer cliente[0,3]
					Escribir "Ingresa el correo del cliente"
					Leer cliente[0,4]
					Escribir "Ingresa el domicilio del cliente"
					Leer cliente[0,5]
					Escribir Cliente[0,0]
					Escribir Cliente[0,1]
					Escribir Cliente[0,2]
					Escribir Cliente[0,3]
					Escribir Cliente[0,4]
					Escribir Cliente[0,5]
				De Otro Modo:
				Escribir "Ingresa un numero correcto"
	FinSegun
Hasta Que RespuestaMenuInicial = 0
FinAlgoritmo
