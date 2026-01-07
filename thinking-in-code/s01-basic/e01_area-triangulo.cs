

/*
Ejemplo 1.1
Elabore un algoritmo y su pseudocódigo para calcular e imprimir el área de un triángulo.
*/

partial class Program
{
    static void AreaTriangulo()
    {
        System.Console.Write("Base del triángulo? ");
        string? baseInput = System.Console.ReadLine();
        if (!double.TryParse(baseInput, out double baseTriangulo))
        {
            System.Console.WriteLine("Ingrese un valor correcto!");
            return;
        }
        System.Console.Write("Altura del triángulo? ");
        string? alturaInput = System.Console.ReadLine();
        if (!double.TryParse(alturaInput, out double alturaTriangulo))
        {
            System.Console.WriteLine("Ingrese un valor correcto!");
            return;
        }
        System.Console.WriteLine($"Area del triángulo: {(baseTriangulo * alturaTriangulo) * 0.5}");
    }   
}

/*
Características clave:
- Usa Console.Write para que el usuario ingrese los valores en la misma línea que el mensaje.
- Valida correctamente ambos inputs con double.TryParse.
- Detiene la ejecución con return si la entrada es inválida, evitando cálculos incorrectos.
- Muestra el resultado solo si ambos valores son válidos.
*/

