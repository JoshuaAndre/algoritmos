Algoritmo practica8
	//Antes de iniciar con el c�digo, inicializamos las variables y les asignamos un valor inicial
	Definir n1,n2, clave, accion Como Entero
	n1<-0
	n2<-0
	//La clave de acceso es "4444"
	//Colocamos el repetir para que pida constantemente la clave de acceso hasta que la clave sea la previamente establecida
	Escribir "La clave de acceso es 4444"
	Repetir
	Escribir "Dame la clave de acceso";
	Leer clave
	Si (clave = 4444) Entonces
		Repetir
			//una vez tenemos el acceso, solicitamos dos n�meros para trabajar con las operaciones requeridas
			//Preguntamos qu� queremos hacer con los n�meros anteriormente solicitados 
			Escribir "Excelente, ahora; Dame dos n�meros"
			Leer n1, n2;
			Escribir "�Qu� quieres hacer?"
			Escribir "1: Sumar"
			Escribir "2: Restar"
			Escribir "3: Multiplicar"
			Escribir "4: Dividir"
			Escribir "5: Salir"
			Leer accion;
			Si accion = 1
				suma <- (n1+n2)
				 Escribir "La suma es: " suma;
			SiNo
				Si accion = 2
					resta <- n1-n2
					Escribir "La resta es: " resta;
				SiNo
					Si accion = 3 
						multi <- (n1*n2)
						 Escribir "La multiplicaci�n es: " multi;
					SiNo
						Si accion = 4
							Si (n1=0) o (n2=0) Entonces
								
								Escribir "No puedes dividir por cero";
							SiNo 
								div <- (n1/n2)
								Escribir "La divisi�n es: " div;
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
			//S� colocamos un 5, terminaremos el algoritmo
		Hasta que accion = 5;
	SiNo
		//S� la clave no es la establecida, se volver� a solicitar hasta que lo sea
		Escribir "Clave incorrecta, dame la correcta."
FinSi
Hasta que clave = 4444
Escribir "Gracias!"
FinAlgoritmo
