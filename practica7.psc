Algoritmo practica7
	Definir c1, c2, c3, c4, c5, matricula Como Entero
	Definir nombre Como Caracter
	
	//Controlador del n�mero de veces de recorrido del ciclo
	C <- 1;
	marcaupv <- 60;
	//Solicitar el n�mero de personas
	Escribir "�Cu�ntos alumnos calcular�s su calificaci�n?";
	//N�mero de personas de las cuales se buscar� su calificaci�n 
	Leer N;
	//Ciclo para calcular calificaciones 
	Mientras c<=N Hacer
		//Calcular las calificaciones
		Escribir "Introduce la matricula:"
		Leer matricula;
		Escribir "Introduce el nombre de alumno: "
		Leer nombre;
		Escribir "Proporciona las 5 calificaciones:"
		Leer c1,c2,c3,c4,c5
		Si (c1<0 o c1>100) Entonces
			Escribir "ERROR: La primera calificaci�n es menor a 0 o mayor que 100, Por favor, Escribe un n�mero mayor o igual a 0 e inferior o igual a 100"
			Leer c1;
		FinSi
		Si (c2<0 o c2>100) Entonces
			Escribir "ERROR: La segunda calificaci�n es menor a 0 o mayor que 100, Por favor, Escribe un n�mero mayor o igual a 0 e inferior o igual a 100"
			Leer c2;
		FinSi
		Si (c3<0 o c3>100) Entonces
			Escribir "ERROR: La tercera calificaci�n es menor a 0 o mayor que 100, Por favor, Escribe un n�mero mayor o igual a 0 e inferior o igual a 100"
			Leer c3;
		FinSi
		Si (c4<0 o c4>100) Entonces
			Escribir "ERROR: La cuarta calificaci�n es menor a 0 o mayor que 100, Por favor, Escribe un n�mero mayor o igual a 0 e inferior o igual a 100"
			Leer c4;
		FinSi
		Si (c5<0 o c5>100) Entonces
			Escribir"ERROR: La quinta calificaci�n es menor a 0 o mayor que 100, Por favor, Escribe un n�mero mayor o igual a 0 e inferior o igual a 100"
			Leer c5;
		FinSi
		//Calculamos el promedio
		p <- (c1+c2+c3+c4+c5)/5
		//IMPRIMIR LA BOLETA DE CALIFICACIONES Y ESTATUS DEL ALUMNO
		Escribir "Matricula: ", matricula, " Nombre del alumno(a): ", nombre;
		Escribir "Sus calificaciones son: "
		Escribir " ", c1;
		Escribir " ", c2;
		Escribir " ", c3;
		Escribir " ", c4;
		Escribir " ", c5;
		Escribir "Su promedio final es de: ", p
		Si c1<70 o c2<70 o c3<70 o c4<70 o c5 <70 entonces
			Escribir "El alumno tuvo una calificaci�n menor a 70 en alguna unidad, por lo tanto ser� reprobado y su promedio en esa unidad ser� de:" marcaupv;
		SiNo
			Escribir "Alumno(a) aprobado (a)"
		FinSi
		c <- c+1
	FinMientras
	Escribir "fin de impresi�n de boletas de calificacion"
	
FinAlgoritmo
