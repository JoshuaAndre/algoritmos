Algoritmo practica6
	//Se definen las variables n = numero de alumnos
	//p = promedio
	//pg = promedio grupal
	//cg = calificación grupal
	//rp = reprobado
	//ap = aprobado
	Definir r Como caracter
	Definir c1, c2, c3,c4 Como enteros
	Escribir "¿Desea iniciar con el proceso de conteo de los alumnos de la universidad inscritos en la materia de programación?(Si/No)" //Antes de iniciar con el ciclo, se pregunta al usuario sí gusta iniciarlo, una vez iniciado
	Leer r; // se preguntan por las 4 calificaciones de cada unidad
	Mientras (r="Si") Hacer;
		Escribir Sin Saltar"Ingresa la calificación de la primera unidad";
		Leer c1;
		Escribir Sin Saltar"Ingresa la calificación de la segunda unidad";
		leer c2;
		Escribir Sin Saltar"Ingresa la calificación de la tercera unidad";
		leer c3;
		Escribir Sin Saltar"Ingresa la calificación de la cuarta unidad";
		leer c4; //Se declara cómo se utilizarán las siguientes variables
		n <- (n + 1);
		p <- (c1+c2+c3+c4)/4;
		pg <- p + sf;
		cg <- (pg/n);
		Si (p<70) Entonces; //Sí una calificación es menor a 70, reprueba. Sí es mayor, aprueba
			rp <- (rp + 1);
		SiNo; 
			ap <- (ap+1);
		FinSi
		Si (p>aa) Entonces //Aquí buscamos saber sí un promedio es mayor al del alumno anterior, para decidir al final cuál alumno tiene el mayor promedio
			califalta <- p
			acalifalta <- nom
		FinSi
		pa <- p;
		Escribir "Quieres añadir un alumno más? (Si/No)"; //Se pregunta al usuario sí quiere que el ciclo continúe
		Leer r;
	Fin Mientras
	Escribir "La unidad con la calificación más alta fue la de: " u;
	Escribir "El alumno con la calificación más alta fue:" nom;
	Escribir "La cantidad de alumnos aprobados fue de:" ap;
	Escribir "La cantidad de alumnos reprobados fue de:" rp;
	Escribir "La calificación grupal es de: " cg
	Escribir "La calificación más alta es de: " nom, " con promedio de: ", califalta, " ,Ese el alumno con el mayor promedio"
FinAlgoritmo
