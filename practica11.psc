Algoritmo practica11
	Definir hombresHospitalizados Como Entero
	Definir mujeresAreaDeOdontologiaConDescuento Como Entero
	Definir totalOdontologia Como Entero
	Definir totalHospitalizacion Como Entero
	Definir totalConsultas Como Entero
	Definir totalRadiografias Como Entero
	Definir fueConsulta Como Caracter
	Definir esSegundaHospitalizacion Como Caracter
	Definir costoServicio Como Entero
	Definir totalRecaudado Como Entero
	Repetir
		Escribir "Deseas agregar una persona?(si/no)"
		Leer respuesta
		Si (respuesta="si") Entonces
			Escribir "Cual es su sexo?(m/f)";
			Leer sexo
			Escribir "¿Cual es su edad?";
			Leer edad
			Escribir "¿Hace cuantos meses fue atendido(a)?"
			leer meses
			Escribir "¿Que tipo de servicio obtuvo?"
			Escribir "1. Radiografia($100), 2.Odontologia($200) 3. Hospitalizacion($300)"
			leer servicio
			Si servicio=2
				Escribir "¿Su servicio fue una consulta?(si/no)"
				leer fueConsulta
			FinSi
			Si (sexo="m") y (servicio = 3) Entonces
				Escribir "¿Es la segunda vez que te hospitalizan?(si/no)"
				leer esSegundaHospitalizacion
			FinSi
			
			
			Si (servicio=1) 
				costoServicio <- 100
			FinSi
			Si (servicio=2) 
				costoServicio <- 200
			FinSi
			Si (servicio=3) 
				costoServicio <- 300
			FinSi
			
			
			
			//Calcular las mujeres de odontologia en los ultimo dos meses y que tengan descuento
			Si (sexo = "f") y (meses <= 2) y (edad >= 18) y (edad <= 60)
				costoServicio <- costoServicio * 0.80
				mujeresAreaDeOdontologiaConDescuento <- mujeresAreaDeOdontologiaConDescuento + 1 
			FinSi
			Si (servicio = 3) y (sexo = "m") y (esSegundaHospitalizacion = "si")
				costoServicio <- costoServicio * 0.50
			FinSi
			
			Si(edad < 18)
				costoServicio <- costoServicio * 0.90
			FinSi
			
			//Calcular a los hombres
			Si (sexo = "m")
				hombresHospitalizados <- hombresHospitalizados + 1
			FinSi
			//Recaudar Hospitalizacion
			Si (servicio = 3)
				totalHospitalizacion <- totalHospitalizacion + costoServicio
			FinSi
			//Recaudar Odontologia
			Si (servicio = 2)
				totalOdontologia <- totalOdontologia + costoServicio
			FinSi
			//Recaudar Consulta Odontologia
			Si (servicio = 2) y (fueConsulta = "si")
				totalConsultas <- totalConsultas + costoServicio
			FinSi
			//Recaudar Radiografia
			Si (servicio =1)
				totalRadiografias <- totalRadiografias + costoServicio
			FinSi
			
			
			
		FinSi
			
	Hasta Que respuesta = "no"
	totalrecaudado <- (totalHospitalizacion + totalRadiografias + totalOdontologia)
	Escribir "Hombres hospitalizados ", hombresHospitalizados
	Escribir "Mujeres con descuento en el area de odontologia ", mujeresAreaDeOdontologiaConDescuento
	Escribir "Total recaudado odontologia $", totalOdontologia
	Escribir "Total recaudado hospitalizacion $", totalHospitalizacion
	Escribir "Total recaudado consultas $", totalConsultas
	Escribir "Total recaudado Radiografias $", totalRadiografias
	Escribir "El total recaudado es $" totalRecaudado
	
FinAlgoritmo
	