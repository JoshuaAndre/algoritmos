Algoritmo proyecto_tienda_de_ventas_en_linea
	// Tienda de ventas en linea
	// - Cuantos clientes tiene
	// - Total recaudado por concepto de ropa masculina deportiva
	// - Cuantos productos tiene por linea (deporte dama, zapato dama, etc.)
	// - Control de ventas por clientes
	// - Total recaudado por clientes por sexo
	// - Total general recaudado general
	Definir stockpantalon, stockshortdeportivo, stockplayera, stockcalcetines Como Entero
	Definir stockpants, stockshort, stockblusa, stockchaqueta Como Entero
	Definir stockzapatillas, stocktenis, stockcrocs, stockzapatos Como Entero
	Definir stockchanclas, stocktacones, stockcrocsrosas, stockazpatillasfemeninas Como Entero
	Definir cliente, nombre, sexo, respuesta, respuestaTipo, respuestaropamasculina, respuestatiporopafemenina, respuestatipocalzadomasculina, respuestatipocalzadofemenina Como Caracter
	Definir pantalonescomprados, shortsdeportivoscomprados, playerascompradas, calcetinescomprados Como Entero
	Definir pantscomprados, shortsfemeninoscomprados, blusascompradas, chaquetascomparadas Como Entero
	Definir zapatillascompradas, teniscomprados, crocscomprados, zapatoscomprados Como Entero
	Definir chanclascompradas, taconescomprados, crocsrosascomprados, zapatillasfemeninascompradas Como Entero
	//Sección ropa masculina deportiva
	stockpantalon <- 100
	stockshortdeportivo <- 100
	stockplayera <- 100
	stockcalcetines <- 100
	//Sección ropa femenina deportiva 
	stockpants <- 100
	stockshort <- 100
	stockblusa <- 100
	stockchaqueta <- 100
	//Sección calzado masculino
	stockzapatillas <- 100
	stocktenis <- 100 
	stockcrocs <- 100
	stockzapatos <- 100
	//Sección calzado femenino
	stockchanclas <- 100 
	stocktacones <- 100
	stockcrocsrosas <- 100
	stockzapatillas <- 100
	Repetir 
		Escribir "Desea ingresar un nuevo cliente?"
		leer cliente
		Si cliente="Si" Entonces
			pantalonescomprados <- 0
			shortsdeportivoscomprados <- 0
			playerascompradas <- 0
			calcetinescomprados <- 0
			pantscomprados <- 0
			shortsfemeninoscomprados <- 0
			blusascompradas <- 0
			chaquetascomparadas <- 0
			zapatillascompradas <- 0 
			teniscomprados <- 0 
			crocscomprados <- 0 
			zapatoscomprados <- 0 
			chanclascompradas <- 0 
			taconescomprados <- 0 
			crocsrosascomprados <- 0 
			zapatillasfemeninascompradas <- 0
			Escribir "¿Cuál es tu nombre?"
			leer nombre
			Escribir "¿Cuál es tu sexo? (M/F)"
			Leer sexo
			Repetir 
				Escribir '¿Desea comprar un nuevo producto?"
				Leer respuesta
				// Lo primero que haremos es crear un menú de tal modo que el usuario pueda acceder a distintos apartados de ropa cada uno con distintos tipos de productos y precios
				Si respuesta='Si' Entonces
					c <- (c + 1)
					Escribir 'Escoge tu categoría deseada:'
					Escribir '1. Ropa masculina deportiva.'
					Escribir '2. Ropa femenina deportiva.'
					Escribir '3. Calzado masculino.'
					Escribir '4. Calzado femenino.'
					Escribir "5. Volver"
					// la variable "respuestaTipo" es la encargada de leer a qué apartado de las distintas secciones se nos llevará
					Leer respuestaTipo
					Segun respuestaTipo Hacer 
						"1": 
							Escribir "¿Cuál producto deseas adquirir?"
							Escribir '1. Pantalón $200'
							Escribir '2. Short deportivo $150'
							Escribir '3. Playera $250'
							Escribir '4. Calcetines $100'
							Escribir "5. Volver"
							Leer respuestaropamasculina
							Segun respuestaropamasculina Hacer
								//Sección ropa masculina
								"1":
									costo <- 200
									Repetir
										Escribir "¿Cuántos deseas comprar?"
										leer respuestastock
										Si (respuestastock > stockpantalon) Entonces
											Escribir "No hay suficientes existencias, por favor vuelve a pedir"
										SiNo
											monto = costo*respuestastock
											pantalonescomprados = respuestastock
											totalRecaudadoPantalon <- totalRecaudadoPantalon + (costoPantalon * pantalonescomprados)
										FinSi
											Escribir "Has adquirido:", respuestastock " Pantalones, con un costo de: ", monto;
									Hasta Que (respuestastock <= stockpantalon)
								"2":
									costo <- 150
									Repetir
										Escribir "¿Cuántos deseas comprar?"
										leer respuestastock
										Si (respuestastock > stockshortdeportivo) Entonces
											Escribir "No hay suficientes existencias, por favor vuelve a pedir"
										SiNo
											monto = costo*respuestastock
											shortsdeportivoscomprados = respuestastock
										FinSi
										Escribir "Has adquirido:", respuestastock " Shorts deportivos, con un costo de: ", monto;
									Hasta Que (respuestastock <= stockshortdeportivo)
								"3":
									costo <- 250
									Repetir
										Escribir "¿Cuántos deseas comprar?"
										leer respuestastock
										Si (respuestastock > stockplayera) Entonces
											Escribir "No hay suficientes existencias, por favor vuelve a pedir"
										SiNo
											monto = costo*respuestastock
											playerascompradas = respuestastock
										FinSi
										Escribir "Has adquirido:", respuestastock " Playeras, con un costo de: ", monto;
									Hasta Que (respuestastock <= stockplayera)
								"4":
									costo <- 100
									Repetir
										Escribir "¿Cuántos deseas comprar?"
										leer respuestastock
										Si (respuestastock > stockcalcetines) Entonces
											Escribir "No hay suficientes existencias, por favor vuelve a pedir"
										SiNo
											monto = costo*respuestastock
											calcetinescomprados = respuestastock
										FinSi
										Escribir "Has adquirido:", respuestastock " Calcetines, con un costo de: ", monto;
									Hasta Que (respuestastock <= stockcalcetines)
								"5":
							FinSegun
						"2":
							//Seccción ropa femenina
							Escribir "¿Cuál producto deseas adquirir?"
							Escribir '1. Pants $200'
							Escribir '2. Short $150'
							Escribir '3. Blusa $200'
							Escribir '4. Chaqueta $300'
							Escribir "5. Volver"
							Leer respuestatiporopafemenina
							Segun respuestatiporopafemenina Hacer
								"1":
									Repetir
										Escribir "¿Cuántos deseas comprar?"
										leer respuestastock
										Si (respuestastock > stockpants) Entonces
											Escribir "No hay suficientes existencias, por favor vuelve a pedir"
										SiNo
											monto = costo*respuestastock
											pantscomprados = respuestastock
										FinSi
										Escribir "Has adquirido:", respuestastock " Calcetinces, con un costo de :", monto;
									Hasta Que (respuestastock <= stockpants)
								"2":
									Repetir
										Escribir "¿Cuántos deseas comprar?"
										leer respuestastock
										Si (respuestastock > stockshort) Entonces
											Escribir "No hay suficientes existencias, por favor vuelve a pedir"
										SiNo
											monto = costo*respuestastock
											shortsfemeninoscomprados = respuestastock
										FinSi
										Escribir "Has adquirido:", respuestastock " Shorts, con un costo de :", monto;
									Hasta Que (respuestastock <= stockshort)
								"3":
									Repetir
										Escribir "¿Cuántos deseas comprar?"
										leer respuestastock
										Si (respuestastock > stockblusa) Entonces
											Escribir "No hay suficientes existencias, por favor vuelve a pedir"
										SiNo
											monto = costo*respuestastock
											blusascompradas = respuestastock
										FinSi
										Escribir "Has adquirido:", respuestastock " Blusas, con un costo de: ", monto;
									Hasta Que (respuestastock <= stockblusa)
								"4":
									Repetir
										Escribir "¿Cuántos deseas comprar?"
										leer respuestastock
										Si (respuestastock > stockchaqueta) Entonces
											Escribir "No hay suficientes existencias, por favor vuelve a pedir"
										SiNo
											monto = costo*respuestastock
											chaquetascomparadas = respuestastock
										FinSi
										Escribir "Has adquirido:", respuestastock " Blusas, con un costo de: ", monto;
									Hasta Que (respuestastock <= stockchaqueta)
								"5":
							FinSegun
							//Sección calzado masculino
						"3":
							Escribir "¿Cuál producto deseas adquirir?"
							Escribir '1. Zapatillas de correr $600'
							Escribir '2. Tenis $350'
							Escribir '3. Crocs $100'
							Escribir '4. Zapatos $400'
							Escribir "5. Volver"
							Leer respuestatipocalzadomasculina
							Segun respuestatipocalzadomasculina Hacer
								"1": 
									Repetir
										costo <- 600
										Escribir "¿Cuántos deseas comprar?"
										leer respuestastock
										Si (respuestastock > stockzapatillas) Entonces
											Escribir "No hay suficientes existencias, por favor vuelve a pedir"
										SiNo
											monto = costo*respuestastock
											zapatillascompradas = respuestastock
										FinSi
										Escribir "Has adquirido:", respuestastock " Blusas, con un costo de: ", monto;
									Hasta Que (respuestastock <= stockzapatillas)
								"2":
									Repetir
										costo <- 600
										Escribir "¿Cuántos deseas comprar?"
										leer respuestastock
										Si (respuestastock > stocktenis) Entonces
											Escribir "No hay suficientes existencias, por favor vuelve a pedir"
										SiNo
											monto = costo*respuestastock
											teniscomprados = respuestastock
										FinSi
										Escribir "Has adquirido:", respuestastock " Tenis, con un costo de: ", monto;
									Hasta Que (respuestastock <= stocktenis)
								"3":
									Repetir
										costo <- 600
										Escribir "¿Cuántos deseas comprar?"
										leer respuestastock
										Si (respuestastock > stockcrocs) Entonces
											Escribir "No hay suficientes existencias, por favor vuelve a pedir"
										SiNo
											monto = costo*respuestastock
											crocscomprados = respuestastock
										FinSi
										Escribir "Has adquirido:", respuestastock " crocs, con un costo de: ", monto;
									Hasta Que (respuestastock <= stockcrocs)
								"4":
									Repetir
										costo <- 600
										Escribir "¿Cuántos deseas comprar?"
										leer respuestastock
										Si (respuestastock > stockzapatos) Entonces
											Escribir "No hay suficientes existencias, por favor vuelve a pedir"
										SiNo
											monto = costo*respuestastock
											zapatoscomprados = respuestastock
										FinSi
										Escribir "Has adquirido:", respuestastock "Zapatos,con un costo de: ", monto;
									Hasta Que (respuestastock <= stockzapatos)
								"5":
							FinSegun
						"4":
							//Sección calzado femenino
							Escribir "¿Cuál producto deseas adquirir?"
							Escribir '1. Chanclas $200'
							Escribir '2. Tacones $600'
							Escribir '3. Crocs rosas $200'
							Escribir '4. Zapatillas $500'
							Escribir "5. Volver"
							Leer respuestatipocalzadofemenina
							Segun respuestatipocalzadofemenina Hacer
								"1": 
									Repetir
										costo <- 600
										Escribir "¿Cuántos deseas comprar?"
										leer respuestastock
										Si (respuestastock > stockchanclas) Entonces
											Escribir "No hay suficientes existencias, por favor vuelve a pedir"
										SiNo
											monto = costo*respuestastock
											chanclascompradas = respuestastock
										FinSi
										Escribir "Has adquirido:", respuestastock "Chanclas, con un costo de: ", monto;
									Hasta Que (respuestastock <= stockchanclas)
								"2":
									Repetir
										costo <- 600
										Escribir "¿Cuántos deseas comprar?"
										leer respuestastock
										Si (respuestastock > stocktacones) Entonces
											Escribir "No hay suficientes existencias, por favor vuelve a pedir"
										SiNo
											monto = costo*respuestastock
											taconescomprados = respuestastock
										FinSi
										Escribir "Has adquirido:", respuestastock " Tacones, con un costo de: ", monto;
									Hasta Que (respuestastock <= stocktacones)
								"3":
									Repetir
										costo <- 600
										Escribir "¿Cuántos deseas comprar?"
										leer respuestastock
										Si (respuestastock > stockcrocsrosas) Entonces
											Escribir "No hay suficientes existencias, por favor vuelve a pedir"
										SiNo
											monto = costo*respuestastock
											crocsrosascomprados = respuestastock
										FinSi
										Escribir "Has adquirido:", respuestastock " Crocs rosas, con un costo de: ", monto;
									Hasta Que (respuestastock <= stockcrocsrosas)
								"4":
									Repetir
										costo <- 600
										Escribir "¿Cuántos deseas comprar?"
										leer respuestastock
										Si (respuestastock > stockazpatillasfemeninas) Entonces
											Escribir "No hay suficientes existencias, por favor vuelve a pedir"
										SiNo
											monto = costo*respuestastock
											zapatillasfemeninascompradas = respuestastock
										FinSi
										Escribir "Has adquirido:", respuestastock " Zapatillas femeninas, con un costo de: ", monto;
									Hasta Que (respuestastock <= stockazpatillasfemeninas)
								"5":
							FinSegun
						De Otro Modo:
							Escribir "Por favor, ingresa una opción válida"
					FinSegun
				FinSi
			Hasta Que (respuesta='No')
			//Sección ropa masculina
			Escribir "El cliente: ", nombre " Adquirió un total de: " pantalonescomprados " pantalones. ";
			Escribir "El cliente: ", nombre " Adquirió un total de: " shortsdeportivoscomprados " shorts. ";
			Escribir "El cliente: ", nombre " Adquirió un total de: " playerascompradas " playeras. ";
			Escribir "El cliente: ", nombre " Adquirió un total de: " calcetinescomprados " calcetines. "; 
			//Sección ropa femenina
			Escribir "El cliente: ", nombre " Adquirió un total de: " pantscomprados " pants. ";
			Escribir "El cliente: ", nombre " Adquirió un total de: " shortsfemeninoscomprados " shorts femeninos. ";
			Escribir "El cliente: ", nombre " Adquirió un total de: " blusascompradas " blusas. ";
			Escribir "El cliente: ", nombre " Adquirió un total de: " chaquetascomparadas " chaquetas. ";
			//Seccion calzado masculino
			Escribir "El cliente: ", nombre " Adquirió un total de: " zapatillascompradas " zapatillas de correr. ";
			Escribir "El cliente: ", nombre " Adquirió un total de: " teniscomprados " tenis. ";
			Escribir "El cliente: ", nombre " Adquirió un total de: " crocscomprados " crocs.";
			Escribir "El cliente: ", nombre " Adquirió un total de: " zapatoscomprados " zapatos. ";
			//Sección calzado femenino
			Escribir "El cliente: ", nombre " Adquirió un total de: " chanclascompradas " chanclas. ";
			Escribir "El cliente: ", nombre " Adquirió un total de: " taconescomprados " tacones. ";
			Escribir "El cliente: ", nombre " Adquirió un total de: " crocsrosascomprados " crocs rosas. ";
			Escribir "El cliente: ", nombre " Adquirió un total de: " zapatillasfemeninascompradas " zapatillas femeninas. "
	FinSi
Hasta Que (cliente="No")

FinAlgoritmo
