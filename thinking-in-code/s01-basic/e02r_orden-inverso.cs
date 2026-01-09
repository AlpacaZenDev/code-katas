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
        int inputD = ValidarInput("Dato D? ");
        System.Console.WriteLine($"» Orden inverso: {inputD} {inputC} {inputB} {inputA}");
        
    }

    static int ValidarInput(string message)
    {
        while (true) 
        {
            
            System.Console.Write(message);
            string? input = System.Console.ReadLine();
            if (int.TryParse(input, out int value))
            {
                return value;
            }
            System.Console.WriteLine("Ingrese sólo números enteros!");
        }
    }



}


/*
📝 CALIFICACIÓN:
Tu rutina OrdenInversoRev está bien estructurada y valida correctamente que los datos sean enteros antes de continuar. La separación de responsabilidades es clara y el flujo es robusto.

Edge cases relevantes:

El usuario ingresa letras, símbolos o valores no numéricos (la rutina sigue pidiendo hasta que sean enteros).
El usuario ingresa valores negativos, cero o números grandes (la rutina los acepta correctamente).
El usuario presiona solo Enter (se interpreta como nulo y se vuelve a pedir).
*/