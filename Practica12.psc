Algoritmo sin_titulo
	Escribir "****----INFORMACION DEL PRODUCTO----****"
	Escribir "�Cu�l es el nombre del producto?"
	leer nombreproducto
	Escribir "�Cu�l es la clave del producto?"
	leer claveproducto
	Escribir "�Cu�l es el precio del producto?"
	leer precioproducto
	Escribir "�Cu�l es su categor�a?"
	leer categoriaproducto
	Escribir "�Cu�l es la descripci�n del producto?"
	leer descripcionproducto
	Escribir "�Cu�ntos " nombreproducto, " deseas?"
	leer cantidadproducto
	Escribir "****---INFORMACION DEl CLIENTE---****"
	Escribir "�Cu�l es su nombre?"
	leer nombrecliente
	Escribir "�Cu�l es su domicilio?"
	leer domiciliocliente
	Escribir "�Cu�l es su n�mero tel�fonico?"
	leer telefonocliente
	Escribir "�Cu�l es tu c�digo postal?"
	leer cpcliente
	Escribir "�Cu�l es tu correo electr�nico?"
	leer correocliente
	totalpagar <- (precioproducto*cantidadproducto)
	Escribir "****----INFORMACI�N PRODUCTO FINAL----****"
	Escribir "Nombre del producto: ", nombreproducto
	Escribir "Clave del producto: ", claveproducto
	Escribir "Precio por unidad del producto: ", precioproducto
	Escribir "Su descripci�n es de: ", descripcionproducto
	Escribir "El nombre del cliente es de: ", nombrecliente
	Escribir "Su domicilio es de: ", domiciliocliente
	Escribir "Su c�digo postal es de: ", cpcliente
	Escribir "Su correo electr�nico es de: ", correocliente
	Escribir "La cantidad de productos comprados fue de: " cantidadproducto, "con un precio de: " precioproducto, "dando un total de: " totalpagar;
	Si (cantidadproducto > 5) y (totalpagar>=5000) y (totalpagar<=10000) y (cpcliente = "87000") Entonces
		Escribir "La factura ha sido timbrada con un folio de 10"
	SiNo
	Si (cantidadproducto > 5) y (totalpagar>10000) y (cpcliente = "87000") Entonces
		Escribir "La factura ha sido timbrada con un folio de 20"
FinSi
FinSi

FinAlgoritmo
