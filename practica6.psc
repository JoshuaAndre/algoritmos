Algoritmo practica6
	//Se definen las variables n = numero de alumnos
	//p = promedio
	//pg = promedio grupal
	//cg = calificación grupal
	//rp = reprobado
	//ap = aprobado
	Definir r, nom Como caracter
	Definir c1, c2, c3,c4 Como enteros
	a<-0
	rp<-0
	ap<-0
	Escribir "¿Desea iniciar con el proceso de conteo de los alumnos de la universidad inscritos en la materia de programación?(Si/No)" //Antes de iniciar con el ciclo, se pregunta al usuario sí gusta iniciarlo, una vez iniciado
	Leer r; // se preguntan por las 4 calificaciones de cada unidad
	Mientras (r="Si") Hacer;
		Escribir sin saltar "Cuál es el nombre del alumno?";
		Leer nom
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
		pg <-(pg+p)
		cg <- (pg/n);
		Si (p>mp) Entonces
			mp<-p
			mejoralumno<-nom
		FinSi
		Si (p<70) Entonces; //Sí una calificación es menor a 70, reprueba. Sí es mayor, aprueba
			rp <- (rp + 1);
		SiNo; 
			ap <- (ap+1);
		FinSi
		Si (c1>c2 y c1>c3 y c1>c4) Entonces
			u<-"Unidad 1"
		SiNo
			Si (c2>c3 y c2>c4) Entonces
				u<-"unidad 2"
			SiNo
				Si (c3>c4) Entonces
					u <-"Unidad 3"
				SiNo
					u <- "Unidad 4"
				FinSi
			FinSi
		FinSi
		
		
		Escribir "Quieres añadir un alumno más? (Si/No)"; //Se pregunta al usuario sí quiere que el ciclo continúe
		Leer r;
	Fin Mientras
	
	Escribir "La unidad con la calificación más alta fue la de: " u;
	Escribir "La calificación más alta es de: " mejoralumno, " con promedio de: ", mp;
	Escribir "La calificación grupal es de: " cg
	Escribir "La cantidad de alumnos aprobados fue de:" ap;
Escribir "La cantidad de alumnos reprobados fue de:" rp;

FinAlgoritmo
