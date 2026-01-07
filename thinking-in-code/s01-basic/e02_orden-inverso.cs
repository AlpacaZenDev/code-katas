/*
Ejemplo 1.2
Construya un pseudocódigo, que dados los datos A, B, C y D que representan
números enteros, escriba los mismos en orden inverso.
*/

partial class Program
{
    static void OrdenInverso()
    {
        System.Console.Write("dato A? ");
        string? inputA = System.Console.ReadLine();
        if (!int.TryParse(inputA, out int datoA))
        {
            System.Console.WriteLine("Ingrese solo valores enteros!");
            return;
        }
        System.Console.Write("dato B? ");
        string? inputB = System.Console.ReadLine();
        if (!int.TryParse(inputB, out int datoB))
        {
            System.Console.WriteLine("Ingrese solo valores enteros!");
            return;
        }
        System.Console.Write("dato C? ");
        string? inputC = System.Console.ReadLine();
        if (!int.TryParse(inputC, out int datoC))
        {
            System.Console.WriteLine("Ingrese solo valores enteros!");
            return;
        }
        System.Console.Write("dato D? ");
        string? inputD = System.Console.ReadLine();
        if (!int.TryParse(inputD, out int datoD))
        {
            System.Console.WriteLine("Ingrese solo valores enteros!");
            return;
        }
        
        System.Console.WriteLine($"Orden inverso: {datoD} {datoC} {datoB} {datoA}");
    }
}

/*
Características clave:
- Valida correctamente ambos inputs con int.TryParse.
- Detiene la ejecución con return si la entrada es inválida, evitando cálculos incorrectos.
*/

