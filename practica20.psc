Algoritmo practica20
	//Un almacen dispone de N sucursales, en cada una de las cuales se vende Z piezas (Todas las piezas se venden en todas las sucursales
	//Se dispone de una matriz de existencias de cada pieza en cada sucursal, por lo tanto se pide encontrar lo siguiente 
	//A) Cual es el total de piezas en cada sucursal
	//B) Cual es la pieza que existe en menor cantidad en todas las sucursales
	//C) Cual es la sucursal que tiene mas del 50% del total de las piezas repartidas por todas las sucursales 
	//D) Cual es la pieza y en que sucursal esta cuyo precio es mayor a $10,000.00 pesos
	
	//Se pregunta por la cantidad de sucursales, usando la variable CS (Cantidad Sucursales)
	Escribir "¿Cual es la cantidad de sucursales?"
	Leer CS
	Escribir "¿Cuantas productos tienen?"
	Leer CP 
	Dimension Sucursal[CS,CP], Precios[CS,CP], TotalProductos[CP], MenorCantidad[CP], MenorProducto[CP]
	CantidadMenor <- 999999
	para I <- 0 hasta CS - 1 Hacer
		para J <- 0 hasta CP - 1 Hacer
			Escribir "Dame la cantidad del producto " J+1 " de la sucursal " I+1
			Leer Sucursal[I,J]
		FinPara
	FinPara
	Escribir ""
	Escribir "¿Cuales son los precios de los productos?"
	Escribir ""
	//Se solicitan los precios de cada producto 
	para I <- 0 hasta CS - 1 Hacer
		para J <- 0 hasta CP - 1 Hacer
			Escribir "Dame el precio del producto " J+1 " de la sucursal " I+1
			Leer Precios[I,J]
		FinPara
	FinPara
	//Se saca el total de productos por sucursal
	Para i<- 0 Hasta CS-1 Hacer
        Para j<- 0 Hasta CP-1 Hacer
            TotalProductos[i] <- TotalProductos[i] + Sucursal[i,j]
        Fin Para
    Fin Para
	Para i <- 0 Hasta CS-1 Hacer
		MenorCantidad[i]<- 9999999999 //Variable del producto menor por sucursal
		Para j<- 0 Hasta CP-1 Hacer//Ciclo para determinar el menor
			Si Sucursal[i,j]<MenorCantidad[i] Entonces
				MenorCantidad[i] <- Sucursal[i,j]
				MenorProducto[i] <- j + 1
			FinSi
			//Condicional para sacar el menor general
			Si Sucursal[i,j]< CantidadMenor Entonces 
				CantidadInferior<- Sucursal[i,j]
				ProductoInferior<- j+1
				Sucursales <- i+1
			FinSi
		FinPara
	FinPara
	para I <- 0 hasta CS - 1 Hacer
		Escribir "Sucursal " I+1
		para J <- 0 hasta CP - 1 Hacer
			Escribir sin saltar "Producto " J+1 "[" Sucursal[I,J] "] con un costo de [" Precios[I,J] "]"
			Escribir ""
		FinPara
	FinPara
	Escribir ""
	//Se imprimen los productos por sucursal
	Para i<-0 Hasta CS-1 Hacer//Ciclo que imprime el total de productos por sucursal y el producto de menor cantidad por sucursal
        Escribir "El total de productos en la sucursal ", i+1 " es de : ", TotalProductos[i]
		Escribir "El producto en menor cantidad es el producto ", MenorProducto[i], " con ", MenorCantidad[i], " unidad/es."
		Escribir ""
    Fin Para
	//Se dice cual es el menor producto con la menro cantidad general
	Escribir ""
	Escribir "El producto en menor cantidad de la sucursal " I + 1 " es el producto ", ProductoInferior, " de la sucursal ", Sucursales " con ", CantidadInferior, " unidad/es."
	//En este ciclo se determina la cantidad de productos de cada sucursal 
	Para i<- 0 Hasta CS-1 Hacer
		Para j<- 0 Hasta CP-1 Hacer
			TotalGeneral<- TotalGeneral + Sucursal[i,j]
		FinPara
		//Condicion para determinar si lo tiene o no
		Si TotalProductos[i]>TotalGeneral*.5 Entonces
		//Si lo tiene, se imprime el siguiente mensaje
			Escribir "La sucursal ", i+1, " tiene mas del 50% del total de productos" 
		FinSi
	FinPara
	//Ciclo para determinar si el costo de m producto, es mayor a 10 mil pesos 
	Para i<- 0 Hasta CS-1 Hacer
		Para j<- 0 Hasta CP-1 Hacer
			Si Precios[i,j]>10000 Entonces
				//Si algun producto supera los 10 mil pesos, se imprime el siguiente mensaje:
				Escribir " El Producto " j+1, " de la sucursal " i+1 " con un precio de :" Precios[i,j] " supera los 10000 pesos"
			FinSi
		FinPara
	FinPara
FinAlgoritmo

