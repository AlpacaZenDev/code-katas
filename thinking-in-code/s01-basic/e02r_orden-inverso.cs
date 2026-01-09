/*
Ejemplo 1.2
Construya un pseudocódigo, que dados los datos A, B, C y D que representan
números enteros, escriba los mismos en orden inverso.
*/

/*
Solución altervativa con separación de responsabilidades.
*/

partial class Program
{
    static void OrdenInversoRev()
    {
        System.Console.WriteLine("\nOrden Inverso (REV)");
        int inputA = ValidarInput("Dato A? ");
        int inputB = ValidarInput("Dato B? ");
        int inputC = ValidarInput("Dato C? ");
        
    }

    static int ValidarInput(string message)
    {
        while (true) 
        {
            
            System.Console.WriteLine(message);
            string? input = System.Console.ReadLine();
            if (int.TryParse(input, out int value))
            {
                return value;
            }
            System.Console.WriteLine("Ingrese sólo números enteros!");
        }
    }

    

}