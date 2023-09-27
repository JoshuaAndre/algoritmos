Algoritmo tareano3
    // Declaraci�n de variables
    definir Base, AlturaTotal, AlturaTriangulo, AlturaRectangulo, AreaTriangulo, AreaRectangulo, AreaTotal Como Real
    // Entrada de datos
    Escribir "Ingrese la base del terreno (B):"
    Leer Base
    Escribir "Ingrese la altura total del terreno (A):"
    Leer AlturaTotal
    Escribir "Ingrese la altura del rect�ngulo (C):"
    Leer AlturaRectangulo
    // Calcular la altura del tri�ngulo
    AlturaTriangulo <- AlturaTotal - AlturaRectangulo
    // Calcular el �rea del tri�ngulo (1/2 * base * altura)
    AreaTriangulo <- 0.5 * Base * AlturaTriangulo
    // Calcular el �rea del rect�ngulo (base * altura)
    AreaRectangulo <- Base * AlturaRectangulo
    // Calcular el �rea total sumando las �reas del tri�ngulo y el rect�ngulo
    AreaTotal <- AreaTriangulo + AreaRectangulo
    // Mostrar el resultado
    Escribir "El �rea total del terreno es:", AreaTotal
FinAlgoritmo

