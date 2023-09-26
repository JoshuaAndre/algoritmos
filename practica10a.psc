Algoritmo practica10a
	Definir vacunas Como Entero
	Definir A, B, C, D, E Como Caracter
	Vacunas <- 1000
	
	Escribir "Bienvenido al sistema de entrega de vacunas, por favor escoge a qué punto de recolección gustas entregar vacunas"
	Repetir
	Repetir
	Escribir "Escribe A para el punto 1"
	Escribir "Escribe B para el punto 2"
	Escribir "Escribe C para el punto 3"
	Escribir "Escribe D para el punto 4"
	Escribir "Escribe E para el punto 5"
	leer puntoentrega
	

	Si puntoentrega = "A" Entonces
		Escribir "¿Cuántas vacunas quieres entregar en el punto 1?"
	SiNo
		Si puntoentrega = "B" Entonces
			Escribir "¿Cuántas vacunas quieres entregar en el punto 2?"
		SiNo
			Si puntoentrega = "C" Entonces
				Escribir "¿Cuantas vacunas quieres entregar en el punto 3?"
			SiNo
				Si puntoentrega = "D" Entonces
					Escribir "¿Cuántas vacunas quieres entregar en el punto 4?"
				SiNo
					Si puntoentrega = "E" Entonces
						Escribir "¿Cuántas vacunas quieres entregar en el punto 5?"
					SiNo
						
						Si (puntoentrega <> "A") o (puntoentrega <> "B") o (puntoentrega <> "C") o (puntoentrega <> "D") o (puntoentrega <> "E")
							Entonces escribir "Elige un punto válido (A/B/C/D/E)"
						SiNo
							
							
						FinSi
  
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
Hasta que (puntoentrega = "A") o (puntoentrega = "B") o (puntoentrega = "C") o (puntoentrega = "D") o (puntoentrega = "E") 
Leer entregadas
	Si puntoentrega = "A" o puntoentrega="a" Entonces
		entregadaspuntoa <- entregadas
	SiNo
		Si puntoentrega = "B" o puntoentrega="b" Entonces
			entregadaspuntob <- entregadas
		SiNo
			Si puntoentrega = "C" o puntoentrega="c" Entonces
				entregadaspuntoc <- entregadas
			SiNo
				Si puntoentrega = "D" o puntoentrega="c" Entonces
					entregadaspuntod <- entregadas
				SiNo
					Si puntoentrega ="E" o puntoentrega="E" Entonces
						entregadaspuntoe <- entregadas
					FinSi
					
					FinSi
				FinSi
			FinSi
		FinSi
	Si (vacunas<=200) Entonces
		Escribir "Hay 200 vacunas o menos, ¡Cuidado!"
	FinSi
	vacunas <- (vacunas-entregadas)
Hasta que (vacunas<=0)
	Escribir "Vacunas entregadas en el punto A son de:" entregadaspuntoa;
	Escribir "Vacunas entregadas en el punto B son de:" entregadaspuntob;
	Escribir "vacunas entregadas en el punto C son de:" entregadaspuntoc;
	Escribir "Vacunas entregadas en el punto D son de:" entregadaspuntod;
	Escribir "Vacunas entregadas en el punto E son de:" entregadaspuntoe;
	
	
FinAlgoritmo
