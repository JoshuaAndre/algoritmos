Algoritmo tareano3
    // Declaración de variables
    definir Base, AlturaTotal, AlturaTriangulo, AlturaRectangulo, AreaTriangulo, AreaRectangulo, AreaTotal Como Real
    // Entrada de datos
    Escribir "Ingrese la base del terreno (B):"
    Leer Base
    Escribir "Ingrese la altura total del terreno (A):"
    Leer AlturaTotal
    Escribir "Ingrese la altura del rectángulo (C):"
    Leer AlturaRectangulo
    // Calcular la altura del triángulo
    AlturaTriangulo <- AlturaTotal - AlturaRectangulo
    // Calcular el área del triángulo (1/2 * base * altura)
    AreaTriangulo <- 0.5 * Base * AlturaTriangulo
    // Calcular el área del rectángulo (base * altura)
    AreaRectangulo <- Base * AlturaRectangulo
    // Calcular el área total sumando las áreas del triángulo y el rectángulo
    AreaTotal <- AreaTriangulo + AreaRectangulo
    // Mostrar el resultado
    Escribir "El área total del terreno es:", AreaTotal
FinAlgoritmo

