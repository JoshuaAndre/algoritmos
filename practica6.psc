Algoritmo practica6
	//Se definen las variables n = numero de alumnos
	//p = promedio
	//pg = promedio grupal
	//cg = calificaci�n grupal
	//rp = reprobado
	//ap = aprobado
	Definir r Como caracter
	Definir c1, c2, c3,c4 Como enteros
	Escribir "�Desea iniciar con el proceso de conteo de los alumnos de la universidad inscritos en la materia de programaci�n?(Si/No)" //Antes de iniciar con el ciclo, se pregunta al usuario s� gusta iniciarlo, una vez iniciado
	Leer r; // se preguntan por las 4 calificaciones de cada unidad
	Mientras (r="Si") Hacer;
		Escribir Sin Saltar"Ingresa la calificaci�n de la primera unidad";
		Leer c1;
		Escribir Sin Saltar"Ingresa la calificaci�n de la segunda unidad";
		leer c2;
		Escribir Sin Saltar"Ingresa la calificaci�n de la tercera unidad";
		leer c3;
		Escribir Sin Saltar"Ingresa la calificaci�n de la cuarta unidad";
		leer c4; //Se declara c�mo se utilizar�n las siguientes variables
		n <- (n + 1);
		p <- (c1+c2+c3+c4)/4;
		pg <- p + sf;
		cg <- (pg/n);
		Si (p<70) Entonces; //S� una calificaci�n es menor a 70, reprueba. S� es mayor, aprueba
			rp <- (rp + 1);
		SiNo; 
			ap <- (ap+1);
		FinSi
		Si (p>aa) Entonces //Aqu� buscamos saber s� un promedio es mayor al del alumno anterior, para decidir al final cu�l alumno tiene el mayor promedio
			califalta <- p
			acalifalta <- nom
		FinSi
		pa <- p;
		Escribir "Quieres a�adir un alumno m�s? (Si/No)"; //Se pregunta al usuario s� quiere que el ciclo contin�e
		Leer r;
	Fin Mientras
	Escribir "La unidad con la calificaci�n m�s alta fue la de: " u;
	Escribir "El alumno con la calificaci�n m�s alta fue:" nom;
	Escribir "La cantidad de alumnos aprobados fue de:" ap;
	Escribir "La cantidad de alumnos reprobados fue de:" rp;
	Escribir "La calificaci�n grupal es de: " cg
	Escribir "La calificaci�n m�s alta es de: " nom, " con promedio de: ", califalta, " ,Ese el alumno con el mayor promedio"
FinAlgoritmo
