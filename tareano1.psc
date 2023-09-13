Algoritmo tareano1
	Escribir "Dame el primer numero"
	leer numero1
	Escribir "Dame el segundo numero"
	leer numero2 
	Si numero1 >= numero2 Entonces
		Si numero1 >= 10 & numero1 <= 100 Entonces
				Si numero1 MOD 2=0 Entonces
					Escribir "El número " numero1 " está en un rango que va desde diez a cien, y al mismo tiempo es par."
				SiNo
					Escribir "El número " numero1 " está en un rango que va desde diez a cien, y al mismo tiempo es impar."
				FinSi
			SiNo
					Si numero1 MOD 2=0 Entonces
						Escribir "El número " numero1 "está en un rango que va desde diez a cien, y al mismo tiempo es par."
					SiNo
						Escribir "El número " numero1 " está en un rango que va desde diez a cien, y al mismo tiempo es impar."
					FinSi

					FinSi
				FinSi
				Si numero2 > numero1 Entonces
					Si numero2 >= 10 & numero2 <= 100 Entonces
						Si numero2 MOD 2=0 Entonces
							Escribir "El número " numero2 " está en un rango que va desde diez a cien, y al mismo tiempo es par."
						SiNo
							Escribir "El número " numero2 " está en un rango que va desde diez a cien, y al mismo tiempo es impar."
						FinSi
					SiNo
						Si numero2 MOD 2=0 Entonces
							Escribir "El número " numero2 " está en un rango que va desde diez a cien, y al mismo tiempo es par."
						SiNo
							Escribir "El número " numero2 " está en un rango que va desde diez a cien, y al mismo tiempo es impar."
						FinSi
						
					FinSi
				FinSi

FinProceso
