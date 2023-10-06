Algoritmo sin_titulo
	Escribir "****----INFORMACION DEL PRODUCTO----****"
	Escribir "¿Cuál es el nombre del producto?"
	leer nombreproducto
	Escribir "¿Cuál es la clave del producto?"
	leer claveproducto
	Escribir "¿Cuál es el precio del producto?"
	leer precioproducto
	Escribir "¿Cuál es su categoría?"
	leer categoriaproducto
	Escribir "¿Cuál es la descripción del producto?"
	leer descripcionproducto
	Escribir "¿Cuántos " nombreproducto, " deseas?"
	leer cantidadproducto
	Escribir "****---INFORMACION DEl CLIENTE---****"
	Escribir "¿Cuál es su nombre?"
	leer nombrecliente
	Escribir "¿Cuál es su domicilio?"
	leer domiciliocliente
	Escribir "¿Cuál es su número teléfonico?"
	leer telefonocliente
	Escribir "¿Cuál es tu código postal?"
	leer cpcliente
	Escribir "¿Cuál es tu correo electrónico?"
	leer correocliente
	totalpagar <- (precioproducto*cantidadproducto)
	Escribir "****----INFORMACIÓN PRODUCTO FINAL----****"
	Escribir "Nombre del producto: ", nombreproducto
	Escribir "Clave del producto: ", claveproducto
	Escribir "Precio por unidad del producto: ", precioproducto
	Escribir "Su descripción es de: ", descripcionproducto
	Escribir "El nombre del cliente es de: ", nombrecliente
	Escribir "Su domicilio es de: ", domiciliocliente
	Escribir "Su código postal es de: ", cpcliente
	Escribir "Su correo electrónico es de: ", correocliente
	Escribir "La cantidad de productos comprados fue de: " cantidadproducto, "con un precio de: " precioproducto, "dando un total de: " totalpagar;
	Si (cantidadproducto > 5) y (totalpagar>=5000) y (totalpagar<=10000) y (cpcliente = "87000") Entonces
		Escribir "La factura ha sido timbrada con un folio de 10"
	SiNo
	Si (cantidadproducto > 5) y (totalpagar>10000) y (cpcliente = "87000") Entonces
		Escribir "La factura ha sido timbrada con un folio de 20"
FinSi
FinSi

FinAlgoritmo
