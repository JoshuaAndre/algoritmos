Algoritmo ProyectoUnidad2
	//Este es el proyecto de la unidad 2 de introduccion a la programacion
	//realizado por Joshua Andre Alvarado Tovar y Enrique Ramos Gallegos del grupo 1-1 de ITI (Ingenieria en tecnologias de la informacion)
Dimension Proveedor[100,6], Cliente[100,6], Producto[100,3], Venta[100,5], Gasto[100,3]
Dimension VentaProducto[100], CompraProducto[100], Importe[100], Ganancia[100]
Definir CompraProducto, GastoProducto Como Real
Definir CantidadClientes, CantidadProveedores, CantidadProductos, CantidadVenta, CantidadGasto, RespuestaMenuInicial, Saldo Como Entero
Escribir "Bienvenido a DevSoft"
Saldo <- 0 
//Menu inicial para el control del algoritmo, se repetira hasta que el usuario escoja terminarlo, se da una serie de numeros que realizan
//distintas acciones dependiendo del numero escogido
Escribir "Ingresa un numero del 0 al 9 para realizar una accion"
Repetir
	Escribir "0 - Terminar algoritmo "
	Escribir "1 - Ingresar un proveedor "
	Escribir "2 - Ingresar un cliente "
	Escribir "3 - Ingresar un producto "
	Escribir "4 - Ingresar venta "
	Escribir "5 - Ingresar gasto "
	Escribir "6 - Verificar estado de cuenta "
	Escribir "7 - Verificar proveedores "
	Escribir "8 - Verificar clientes "
	Escribir "9 - Verificar productos"
		Leer RespuestaMenuInicial
	Segun RespuestaMenuInicial Hacer
		//Terminacion del uso del algoritmo
		0: Escribir "Fin del algoritmo..."
		1: //Ciclo de ingreso de un proveedor, cada vez que se ingresa a este apartado, se agrega uno al contador por lo que el subindice X cambia y hace que los 
		//proveedores siempre sean distintos, de esta forma no se sobreescribiran bajo ninguna circunstancia 
		//Se solicita ID del proveedor, nombre, empresa, numero de telefono, correo y domicilio del mismo.
			CantidadProveedores <- CantidadProveedores + 1
			Escribir "Ingresa la ID del proveedor:"
			Repetir 
				leer Proveedor[CantidadProveedores,0]
				Si Proveedor[CantidadProveedores, 0] = "" Entonces
					Escribir "Ingresa algo"
				FinSi
			Hasta que Proveedor[CantidadProveedores,0] <> "" 	
			Repetir 
				Escribir "Ingresa el nombre del proveedor:"
				leer Proveedor[CantidadProveedores,1]
				Si Proveedor[CantidadProveedores, 1] = "" Entonces
					Escribir "Ingresa algo"
				FinSi
			Hasta que Proveedor[CantidadProveedores,1] <> "" 
			Repetir
				Escribir "Ingresa la empresa del proveedor:"
				Leer Proveedor[CantidadProveedores,2]
				Si proveedor[CantidadProveedores,2] ="" Entonces
					Escribir "Ingresa algo"
				FinSi
			Hasta que Proveedor[CantidadProveedores,2] <> ""
			Repetir 
				Escribir "Ingresa el numero de telefono del proveedor:"
				Leer proveedor[CantidadProveedores,3]
				Si proveedor[CantidadProveedores,3] = "" Entonces
					Escribir "Ingresa algo"
				FinSi
			Hasta que proveedor[CantidadProveedores,3] <> ""
			Repetir 
				Escribir "Ingresa el correo del proveedor:"
				Leer proveedor[CantidadProveedores,4]
				Si proveedor[CantidadProveedores,4] = "" Entonces
					Escribir "Ingresa algo"
				FinSi
			Hasta que Proveedor[CantidadProveedores,4] <> ""
			Repetir
				Escribir "Ingresa el domicilio del proveedor:"
				Leer Proveedor[CantidadProveedores,5]
				Si proveedor[CantidadProveedores,5] = "" Entonces
					Escribir "Ingresa algo"
				FinSi
			Hasta que Proveedor[CantidadProveedores,5] <> ""
		2: //Ciclo de ingreso de un cliente, cada vez que se ingresa a este apartado, se agrega uno al contador por lo que el subindice X cambia y hace que los 
		//clientes siempre sean distintos, de esta forma no se sobreescribiran bajo ninguna circunstancia 
		//Se solicita ID del Cliente, nombre, empresa, telefono, correo y domicilio.
				CantidadClientes <- CantidadClientes + 1
			Repetir
				Escribir "Ingresa la ID del cliente:"
				Leer cliente[CantidadClientes,0]
				Si Cliente[CantidadClientes, 0] = "" Entonces
					Escribir "Ingresa algo"
				FinSi
			Hasta que Cliente[CantidadClientes, 0] <> ""
			Repetir
				Escribir "Ingresa el nombre del cliente:"
				Leer cliente[CantidadClientes,1]
				Si cliente[CantidadClientes,1] = "" Entonces
					Escribir "Ingresa algo"
				FinSi
			Hasta que Cliente[CantidadClientes,1] <> ""
			Repetir
				Escribir "Ingresa la empresa del cliente:"
				Leer cliente[CantidadClientes,2]
				Si Cliente[CantidadClientes,2] = "" Entonces
					Escribir "Ingresa algo"
				FinSi
			Hasta que Cliente[CantidadClientes,2] <> ""
			Repetir
				Escribir "Ingresa el telefono del cliente:"
				Leer cliente[CantidadClientes,3]
				Si Cliente[CantidadClientes,3] = "" Entonces
					Escribir "Ingresa algo"
				FinSi
			Hasta que cliente[CantidadClientes,3] <> ""
			Repetir
				Escribir "Ingresa el correo del cliente:"
				Leer cliente[CantidadClientes,4]
				Si Cliente[CantidadClientes,4] = "" Entonces
					Escribir "Ingresa algo"
				FinSi
			Hasta que Cliente[CantidadClientes,4] <> ""
			Repetir
				Escribir "Ingresa el domicilio del cliente:"
				Leer cliente[CantidadClientes,5]
				Si cliente[CantidadClientes,5] = "" Entonces
					Escribir "Ingresa algo"
				FinSi
			Hasta que Cliente[CantidadClientes,5] <> ""
		3:	//Ciclo de ingreso de un cliente, cada vez que se ingresa a este apartado, se agrega uno al contador por lo que el subindice X cambia y hace que los 
		//clientes siempre sean distintos, de esta forma no se sobreescribiran bajo ninguna circunstancia 
		//Se solicita ID del producto, nombre, y de cual proveedor, precio de compra y venta
				Si CantidadProveedores >= 1 Entonces
				CantidadProductos <- CantidadProductos + 1
			Repetir 
				Escribir "Cual es la ID del producto?"
				Leer Producto[CantidadProductos,0]
				Si Producto[CantidadProductos,0] = "" Entonces
					Escribir "Ingresa algo"
				FinSi
			Hasta que Producto[CantidadProductos,0] <> ""
			Repetir
				Escribir "Cual es el nombre del producto?"
				Leer Producto[CantidadProductos,1]
				Si Producto[CantidadProductos,1] = "" Entonces
					Escribir "Ingresa algo"
				FinSi
			Hasta que Producto[CantidadProductos,1] <> ""
			Repetir 
				Escribir "De que proveedor?"
				Escribir "Lista de proveedores:"
				para X <- 1 hasta CantidadProveedores
					Escribir Proveedor[X,1]
				FinPara
				Leer Producto[CantidadProductos, 2]
			Hasta que Producto[CantidadProductos, 2] = Proveedor[CantidadProveedores,1] 
				Escribir "Cual es su precio de compra?"
			Repetir 
				Leer CompraProducto[CantidadProductos]
				Si CompraProducto[CantidadProductos] <= 0 Entonces 
						Escribir "Ingresa una cantidad mayor a 0"
				FinSi
				Hasta Que CompraProducto[CantidadProductos] > 0
					Escribir "Cual es su precio de venta?"
				Repetir
					Leer VentaProducto[CantidadProductos]
					Si VentaProducto[CantidadProductos] < CompraProducto[CantidadProductos] Entonces
						Escribir "Tiene que ser mayor al precio de compra..."
					FinSi
				Hasta que VentaProducto[CantidadProductos] > CompraProducto[CantidadProductos]
				Ganancia[CantidadProductos] <- VentaProducto[CantidadProductos] - CompraProducto[CantidadProductos]	
				SiNo
				Escribir "Ingresa al menos un proveedor primero..."
			FinSi
		4://Ciclo de ingreso de una venta, en donde se pide su ID, el nombre de un producto el cual deberia de haber sido establecido con anterioridad, el nombre del cliente, el cual tambien debio
		//de ser establecido con anterioridad, el nombre del proveedor que debio de haber sido establecido y la fecha.
		//Solo se puede ingresar si existen productos, proveedores y clientes
			Si CantidadProductos <> 0 y CantidadProveedores <> 0 y CantidadClientes <> 0 Entonces
				CantidadVenta <- CantidadVenta + 1
				Escribir "Cual es la ID de la venta?"
			Repetir
				Leer Venta[CantidadVenta, 0]
				Si Venta[CantidadVenta,0] = "" Entonces
					Escribir "Ingres algo"
				FinSi
			Hasta que Venta[Cantidad,0] <> ""
				Escribir "Cual es el nombre del producto?"
				Escribir "Lista de productos: "
			para X <- 1 hasta CantidadProductos Hacer
				Escribir Producto[X,1]
			FinPara
			Repetir
				Leer Venta[CantidadVenta, 1]
				Si Venta[CantidadVenta, 1] <> Producto[CantidadProductos,1]
					Escribir "No existe ese producto"
				FinSi
			Hasta que Venta[CantidadVenta, 1] = Producto[CantidadProductos,1]
				Escribir "Cual es el nombre del cliente?"
				Escribir "Lista de clientes"
			para X <- 1 hasta CantidadClientes Hacer
				Escribir Cliente[X,1]
			FinPara
			Repetir
				Leer venta[CantidadVenta, 2]
				Si Venta[CantidadVenta,2] <> Cliente[CantidadClientes,1]
					Escribir "No existe ese cliente"
				FinSi
			Hasta que venta[CantidadVenta, 2] = Cliente[CantidadClientes,1]
				Escribir "Cual es el nombre del proveedor?"
				Escribir "Lista de proveedores:"
			para X <- 1 hasta CantidadProveedores
				Escribir Proveedor[X,1]
			FinPara
			Repetir
				leer Venta[CantidadVenta, 3]
			Si Venta[CantidadVenta,3] <> Proveedor[CantidadProveedores,1] Entonces
					Escribir "No existe ese proveedor"
			FinSi
			Hasta que Venta[CantidadVenta, 3] = Proveedor[CantidadProveedores,1]
				Escribir "Cual es la fecha de la venta?"
			Leer Venta[CantidadVenta, 4]
			SiNo
				Escribir "Falta algun proveedor o cliente o producto"
			FinSi
			para X <- 1 hasta CantidadProductos hacer
				Si Venta[CantidadVenta,1] = Producto[X,1] Entonces
					Escribir "Ganancia" Ganancia[X]
				FinSi
			FinPara
		5://Ciclo de ingreso de los gastos, donde se pregunta por la ID, el nombre, la fecha y el importe
		//para su incersion
			CantidadGasto <- CantidadGasto + 1
			Escribir "Cual es la ID?"
			Repetir
				Leer Gasto[CantidadGasto, 0]
				Si Gasto[CantidadGasto, 0] = ""
					Entonces
					Escribir "Ingresa algo"
				FinSi
			Hasta que Gasto[CantidadGasto,0] <> ""
			Escribir  "Cual es el nombre del gasto?"
			Repetir
				Leer Gasto[CantidadGasto, 1]
				Si Gasto[CantidadGasto, 1] = ""
					Entonces
					Escribir "Ingresa algo"
				FinSi
			Hasta que Gasto[CantidadGasto,1] <> ""
			Escribir "Cual es la fecha del gasto?"
			Repetir
				Leer Gasto[CantidadGasto, 2]
				Si Gasto[CantidadGasto,2] = ""
					Entonces
					Escribir "Ingresa algo"
				FinSi
			Hasta que Gasto[CantidadGasto,2] <> ""
			Escribir "Cual es el importe del gasto?"
			Leer Importe[CantidadGasto]
		6: //Estado de cuenta, se imprime el estado de cuenta y se da una descripcion de que significa cada subindice
			Si CantidadVenta <> 0 o CantidadGasto <> 0 Entonces 
				Escribir "Estado de cuenta: "
				Escribir "ID       Concepto          Abono     Cargo     Saldo"
			//Se imprimen las ventas, se dejan espacios en blanco para mejorar su legibilidad
			Si CantidadVenta <> 0 Entonces
				para X <- 1 hasta CantidadVenta Hacer
					para Z <- 1 hasta CantidadProducto hacer 
						Si Venta[CantidadVenta,1] = Producto[Z,1] Entonces
							saldo <- saldo + Ganancia[Z]
							Escribir sin saltar Venta[CantidadVenta,0] " Venta de: " Venta[CantidadVenta,1], " " Ganancia[Z], "                 " Saldo
							Escribir ""
						FinSi
					FinPara
				FinPara
			FinSi
		//Se imprimen los gastos, se dejan espacios vacios muy grandes para mejorar su legibilidad
			Si CantidadGasto <> 0 Entonces
			para X <- 1 hasta CantidadGasto Hacer
				Saldo <- Saldo - Importe[X] 
				Escribir sin saltar Gasto[CantidadGasto,0], " " Gasto[CantidadGasto,1], "                      " Importe[X], "        " Saldo
				Escribir ""
			FinPara
			FinSi
			SiNo
				Escribir "No hay estado de cuenta... :("
			FinSi
		//Debugger:
		7: //Este apartado se utiliza como Debugger para verificar los proveedores ingresados
		//La matriz de proveedores y se describe brevemente que es caad subindice
			Si CantidadProveedores <> 0 Entonces
				Escribir "Imprimiendo proveedores..."
				Escribir "[ID] [Nombre] [Nombre de la empresa] [Numero de telefono] [Correo electronico] y [Domicilio]"
			para I <- 1 hasta CantidadProveedores Hacer
				para J <- 0 hasta 5 Hacer
					Escribir sin saltar " [" Proveedor[I,J] "]"
				FinPara
				Escribir ""
			FinPara
		SiNo
			Escribir "No hay proveedores..."
		FinSi
		8://Este apartado se utiliza como Debugger para verificar los clientes ingresados, se imprime
		//La matriz de clientes y se da una descripcin de cada subindice
			Si CantidadClientes <> 0 Entonces
				Escribir "Imprimiendo clientes..."
				Escribir "[ID] [Nombre del cliente] [Empresa] [Telefono] [Correo] y [Domicilio]"
			para I <- 1 hasta CantidadClientes Hacer
				para J <- 0 hasta 5 Hacer
					Escribir sin saltar " [" Cliente[I,J] "]"
				FinPara
				Escribir ""
			FinPara
		SiNo	
			Escribir "No hay clientes..."
		FinSi
		9: //Este apartado se utiliza como Debugger para verificar los productos ingresados, se imprime
		//La matriz de productos y se da una descripcion de que es cada subindice
				Si CantidadProductos <> 0 Entonces
				Escribir "Imprimiendo productos..."
				Escribir "[ID] [Producto] [Proveedor] [Precio de compra] & [venta] "
				para I <- 1 hasta CantidadProductos Hacer
					para J <- 0 hasta 2 Hacer
						Escribir sin saltar "[" Producto[I,J] "] "
					FinPara
				FinPara
					Escribir sin saltar "[" CompraProducto[CantidadProductos] "]"
					Escribir sin saltar " [" VentaProducto[CantidadProductos] "]"
					Escribir ""
				SiNo 
				Escribir "No hay productos..."
			FinSi
		De Otro Modo:
			Escribir "Ingresa un numero correcto..."
FinSegun
Hasta Que RespuestaMenuInicial = 0
FinAlgoritmo

