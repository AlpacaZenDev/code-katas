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
        string? datoA = System.Console.ReadLine();
        System.Console.Write("dato B? ");
        string? datoB = System.Console.ReadLine();
        System.Console.Write("dato C? ");
        string? datoC = System.Console.ReadLine();
        System.Console.Write("dato D? ");
        string? datoD = System.Console.ReadLine();
        
        System.Console.WriteLine($"Orden inverso: {datoD} {datoC} {datoB} {datoA}");
    }
}

