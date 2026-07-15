/**
 * Cálculo de la suma y producto de dos números.
 */

/* EARLY VERSION:
 * El código funciona para el propósito didáctico actual.
 * Es una etapa previa a una implementación más robusta, segura o completa.
 * No está destinado a producción ni representa la forma definitiva de resolver el problema.
 */


#region
// // Académico: Funciona pero carece de utilidad real al no permitir entrada dinámica del usuario.
//int num1 = 5;
//int num2 = 10;

//var suma = num1 + num2;
//var producto = num1 * num2;

//Console.WriteLine(suma);
//Console.WriteLine(producto);
#endregion

#region
// Académico: Demuestra la sintaxis directa de Parse, pero es inseguro por riesgo de FormatException ante entradas inválidas.
//Console.Write("Ingrese primer entero: ");
//string? numA = Console.ReadLine();
//Console.Write("Ingrese segundo entero: ");
//string? numB = Console.ReadLine();

//int numEnteroA = int.Parse(numA);
//int numEnteroB = int.Parse(numB);

//var suma = numEnteroA + numEnteroB;
//double producto = numEnteroA * numEnteroB;

//Console.WriteLine($"La suma de ambos números es {suma}");
//Console.WriteLine($"El producto de ambos números es {producto}");
#endregion

#region
// Posible excepción si la entrada no es un entero válido
Console.Write("Ingrese primer entero: ");
//string? entradaA = Console.ReadLine();
int numA = int.Parse(Console.ReadLine());
Console.Write("Ingrese segundo entero: ");
//string? entradaB = Console.ReadLine();
int numB = int.Parse(Console.ReadLine());



var suma = numA + numB;
var producto = numA * numB;

Console.WriteLine($"La suma de ambos números es {suma}");
Console.WriteLine($"El producto de ambos números es {producto}");
#endregion
