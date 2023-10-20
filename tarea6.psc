Algoritmo tarea6
	//Crear un pseudocódigo cque lea los precios de 5 productos y las cantidades
	//vendidas en sus cuatro sucursales.
	//a) Las cantidades totales de cada articulo
	//b) la cantidad de articulos en la sucursal numero dos
	//c) la recaudación de articulo 3 en la sucursal numero 1 
	//d) la recaudación total por cada sucursal
	//e) la recaudación total de la empresa
	//f) la sucursal de mayor recaudación
	definir RecaudadoTotalProductoUno, RecaudadoTotalProductoDos, RecaudadoTotalProductoTres, RecaudadoTotalProductoCuatro como entero
	definir SucursalMayorRecaudacion, InformacionSolicitada como entero
	definir RespuestaGustas, RespuestaCliente, CualSucursal, EscogeSucursal como cadena
	dimension CostoProductoSucursalUno[5], CostoProductoSucursalDos[5], CostoProductoSucursalTres[5], CostoProductoSucursalCuatro[5]
	dimension CantidadProductosUno[5], CantidadProductosDos[5], CantidadProductosTres[5], CantidadProductosCuatro[5]
	Dimension RecaudadoProductoUno[5], RecaudadoProductoDos[5], RecaudadoProductoTres[5], RecaudadoProductoCuatro[5]
	
	para P <- 1 hasta 5 con paso 1 hacer 
		CantidadProductosUno[P] <- 10
		CantidadProductosDos[P] <- 10
		CantidadProductosTres[P] <- 10
		CantidadProductosCuatro[P] <- 10
	FinPara
	para P <- 1 hasta 5 con paso 1 Hacer
		AumentarCosto <- 0
		AumentarCosto <- AumentarCosto + (100*P)
		CostoProductoSucursalUno[P] <- AumentarCosto
	FinPara
	para P <- 1 hasta 5 con paso 1 Hacer
		AumentarCosto <- 0
		AumentarCosto <- AumentarCosto + (100*P)
		CostoProductoSucursalDos[P] <- AumentarCosto
	FinPara
	para P <- 1 hasta 5 con paso 1 Hacer
		AumentarCosto <- 0
		AumentarCosto <- AumentarCosto + (100*P)
		CostoProductoSucursalTres[P] <- AumentarCosto
	FinPara
	para P <- 1 hasta 5 con paso 1 Hacer
		AumentarCosto <- 0
		AumentarCosto <- AumentarCosto + (100*P)
		CostoProductoSucursalCuatro[P] <- AumentarCosto
	FinPara
Repetir
	//Me indica si el usuario quiere intentar hacer algo, en caso de que su respuesta sea otra que "Si", el algoritmo dejará de repetirse y se terminará
		Escribir "Gustas hacer algo?(Si/No)"
	leer RespuestaGustas
		Escribir "Que gustas hacer? (1 al 9)"
			Escribir "1. Comprar un nuevo producto"
			Escribir "2. Verificar informacion"
			Escribir "9. Salir"
	leer RespuestaCliente
		Si RespuestaCliente = "1" Entonces
			Escribir "Por favor, indicanos en que sucursal quieres comprar."
			Escribir "Escribe un numero del (1 al 4) "
		para S <- 1 hasta 4 Hacer 
			Escribir "Sucursal (" S
		FinPara
Repetir 	
	Leer CualSucursal
Hasta que CualSucursal = "1" o Cualsucursal= "2" o CualSucursal = "3" o CualSucursal = "4" o CualSucursal = "5"
Si CualSucursal = "1" Entonces
	Escribir "Que producto de la Sucursal " CualSucursal " quieres comprar?"
		para P <- 1 hasta 5 con paso 1 Hacer
			Escribir "Producto " P " $ " CostoProductoSucursalUno[P] " Existen " CantidadProductosUno[P]
		FinPara
		Leer CualProducto		
			Escribir "¿Cuantos quieres comprar de este producto?"
		Leer CuantosProductos
			Segun CualProducto Hacer
			1:
			CantidadProductosUno[1] <- CantidadProductosUno[1] - CuantosProductos
			RecaudadoProductoUno[1] <- CuantosProductos * CostoProductoSucursalUno[1]
			2:
			CantidadProductosUno[2] <- CantidadProductosUno[2] - CuantosProductos
			RecaudadoProductouno[2] <- CuantosProductos * CostoProductoSucursalUno[2]
			3:
			CantidadProductosUno[3] <- CantidadProductosUno[3] - CuantosProductos
			RecaudadoProductouno[3] <- CuantosProductos * CostoProductoSucursalUno[3]
			4:
			CantidadProductosUno[4] <- CantidadProductosUno[4] - CuantosProductos
			RecaudadoProductouno[4] <- CuantosProductos * CostoProductoSucursalUno[4]
			5:
			CantidadProductosUno[5] <- CantidadProductosUno[5] - CuantosProductos
			RecaudadoProductouno[5] <- CuantosProductos * CostoProductoSucursalUno[5]
			FinSegun
FinSi
Si CualSucursal = "2" Entonces
	Escribir "Que producto de la Sucursal " CualSucursal " quieres comprar?"
		para P <- 1 hasta 5 Hacer
			Escribir "Producto " P " $ " CostoProductoSucursalDos[P] " Existen " CantidadProductosDos[P]
		FinPara
		Leer CualProducto
			Escribir "¿Cuantos quieres comprar de este producto?"
		Leer CuantosProductos
			Segun CualProducto Hacer
			1:		
			CantidadProductosDos[1] <- CantidadProductosDos[1] - CuantosProductos
			RecaudadoProductoDos[1] <- CuantosProductos * CostoProductoSucursalDos[1]	
			2:	
			CantidadProductosDos[2] <- CantidadProductosDos[2] - CuantosProductos
			RecaudadoProductoDos[2] <- CuantosProductos * CostoProductoSucursalDos[2]
			3:			
			CantidadProductosDos[3] <- CantidadProductosDos[3] - CuantosProductos
			RecaudadoProductoDos[3] <- CuantosProductos * CostoProductoSucursalDos[3]
			4:	
			CantidadProductosDos[4] <- CantidadProductosDos[4] - CuantosProductos
			RecaudadoProductoDos[4] <- CuantosProductos * CostoProductoSucursalDos[4]
			5:	
			CantidadProductosDos[5] <- CantidadProductosDos[5] - CuantosProductos
			RecaudadoProductoDos[5] <- CuantosProductos * CostoProductoSucursalDos[5]
			FinSegun
SiNo
Si CualSucursal = "3" Entonces
	Escribir "Que producto de la Sucursal " CualSucursal " quieres comprar?"
		para P <- 1 hasta 5 Hacer
			Escribir "Producto " P " $ " CostoProductoSucursalTres[P] " Existen " CantidadProductosTres[P]
		FinPara
		Leer CualProducto
		Escribir "¿Cuantos quieres comprar de este producto?"
		Leer CuantosProductos
			Segun CualProducto Hacer
			1:
			CantidadProductosTres[1] <- CantidadProductosTres[1] - CuantosProductos
			RecaudadoProductoTres[1] <- CuantosProductos * CostoProductoSucursalTres[1]
			2:
			CantidadProductosTres[2] <- CantidadProductosTres[2] - CuantosProductos
			RecaudadoProductoTres[2] <- CuantosProductos * CostoProductoSucursalTres[2]
			3:
			CantidadProductosTres[3] <- CantidadProductosTres[3] - CuantosProductos
			RecaudadoProductoTres[3] <- CuantosProductos * CostoProductoSucursalTres[3]
			4:
			CantidadProductosTres[4] <- CantidadProductosTres[4] - CuantosProductos
			RecaudadoProductoTres[4] <- CuantosProductos * CostoProductoSucursalTres[4]
			5:
			CantidadProductosTres[5] <- CantidadProductosTres[5] - CuantosProductos	
			RecaudadoProductoTres[5] <- CuantosProductos * CostoProductoSucursalTres[5]
			FinSegun
SiNo
	Si CualSucursal = "4" Entonces
	Escribir "Que producto de la Sucursal " CualSucursal  " quieres comprar?"
		para P <- 1 hasta 5 Hacer
			Escribir "Producto " P " $ " CostoProductoSucursalCuatro[P] " Existen " CantidadProductosCuatro[P]
		FinPara
		Leer CualProducto
		Escribir "¿Cuantos quieres comprar de este producto?"
		Leer CuantosProductos
		Segun CualProducto Hacer
			1:
			CantidadProductosCuatro[1] <- CantidadProductosCuatro[1] - CuantosProductos
			RecaudadoProductoCuatro[1] <- CuantosProductos * CostoProductoSucursalCuatro[1]
			2:
			CantidadProductosCuatro[2] <- CantidadProductosCuatro[2] - CuantosProductos
			RecaudadoProductoCuatro[2] <- CuantosProductos * CostoProductoSucursalCuatro[2]
			3:
			CantidadProductosCuatro[3] <- CantidadProductosCuatro[3] - CuantosProductos
			RecaudadoProductoCuatro[3] <- CuantosProductos * CostoProductoSucursalCuatro[3]
			4:
			CantidadProductosCuatro[4] <- CantidadProductosCuatro[4] - CuantosProductos
			RecaudadoProductoCuatro[4] <- CuantosProductos * CostoProductoSucursalCuatro[4]
			5:
			CantidadProductosCuatro[5] <- CantidadProductosCuatro[5] - CuantosProductos
			RecaudadoProductoCuatro[5] <- CuantosProductos * CostoProductoSucursalCuatro[5]
	FinSegun
FinSi
FinSi
FinSi
FinSi
RecaudadoTotalProductoUno <- RecaudadoTotalProductoUno + RecaudadoProductoUno[1] + RecaudadoProductoUno[2] + RecaudadoProductoUno[3] + RecaudadoProductoUno[4] + RecaudadoproductoUno[5]
RecaudadoTotalProductoDos <- RecaudadoTotalProductoDos + RecaudadoProductoDos[1] + RecaudadoProductoDos[2] + RecaudadoProductoDos[3] + RecaudadoProductoDos[4] + RecaudadoProductoDos[5]   
RecaudadoTotalProductoTres <- RecaudadoTotalProductoTres + RecaudadoproductoTres[1] + RecaudadoproductoTres[2] + RecaudadoproductoTres[3] + RecaudadoproductoTres[4] + RecaudadoproductoTres[5]
RecaudadoTotalProductoCuatro <- RecaudadoTotalProductoCuatro + RecaudadoProductoCuatro[1] + RecaudadoProductoCuatro[2] + RecaudadoProductoCuatro[3] + RecaudadoProductoCuatro[4] + RecaudadoProductoCuatro[5]
RecaudacionTotalDeLaEmpresa <- RecaudacionTotalDeLaEmpresa + RecaudadoTotalProductoUno + RecaudadoTotalProductoDos + RecaudadoTotalProductoTres + RecaudadoTotalProductoCuatro
	Si RespuestaCliente = "2" Entonces
		Repetir
			Escribir "¿Que informacion necesitas?"
			Escribir "1. Productos de X sucursal (1-4)" 
			Escribir "2. Recaudacion total de la empresa"
			Escribir "3. Cantidad de articulos de la sucursal 2"
			Escribir "4. Recaudacion total de articulos 3 en la sucursal numero 1"
			Escribir "5. Sucursal de mayor recaudacion."
			Escribir "9. Salir"
			Leer InformacionSolicitada
			Segun InformacionSolicitada Hacer
						
					//Se imprimen los resultados solicitados en base a tu respuesta en la variable informacion solicitada
					1:	
						Escribir "De que sucursal? (1-5)"
						leer EscogeSucursal
							Segun EscogeSucursal Hacer
								1:
								para P <- 1 hasta 5 hacer
									Escribir "Producto (" P " " CantidadProductosUno[P] 
								FinPara		
								2:
								para P <- 1 hasta 5 hacer
									Escribir "Producto (" P " " CantidadProductosDos[P] 
								FinPara
								3:
								para P <- 1 hasta 5 hacer
									Escribir "Producto (" P " " CantidadProductosTres[P] 
								FinPara
								4:
								para P <- 1 hasta 5 hacer
									Escribir "Producto (" P " " CantidadProductosCuatro[P] 
								FinPara
							FinSegun
					2: 
						Escribir "La recaudacion total de la empresa es de: " RecaudacionTotalDeLaEmpresa
					3: 
						Escribir "La cantidad de articulos de la sucursal numeros dos es de: " CantidadProductosDos[1] + CantidadProductosDos[2] + CantidadProductosDos[3] + CantidadProductosDos[4] + CantidadProductosDos[5]
					4: 
						Escribir "La recaudacion total de articulos 3 en la sucursal numero 1 es de: " RecaudadoProductoUno[3]
					5:
						Escribir "La sucursal de mayor recaudacion es: " SucursalMayorRecaudacion
			FinSegun
		Hasta que InformacionSolicitada = 9
FinSi
Hasta Que RespuestaGustas <> "Si" o RespuestaCliente = "9"
FinAlgoritmo
