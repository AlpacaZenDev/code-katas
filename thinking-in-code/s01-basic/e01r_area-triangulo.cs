

/*
Ejemplo 1.1
Elabore un algoritmo y su pseudocódigo para calcular e imprimir el área de un triángulo.
*/

/*
Solución altervativa con separación de responsabilidades.
*/

partial class Program
{
    static void AreaTriangulo()
    {
        double baseTriangulo = ValidarDouble("Base del triángulo? ");
        double alturaTriangulo = ValidarDouble("Altura del triángulo? ");
        double area = CalcularAreaTriangulo(baseTriangulo, alturaTriangulo);
        System.Console.WriteLine($"Area del triángulo: {area}");
    }   

    static double ValidarDouble(string mensaje)
    {
        double valor;
        while (true)
        {
            System.Console.Write(mensaje);
            string input = System.Console.ReadLine();
            if (double.TryParse(input, out valor))
            {
                return valor;
            }
            System.Console.WriteLine("Ingrese un valor correcto!");
        }
    }

    static double CalcularAreaTriangulo(double b, double h)
    {
        return (b * h) * 0.5;
    }
}



/*
Características clave:
- Usa Console.Write para que el usuario ingrese los valores en la misma línea que el mensaje.
- Valida correctamente ambos inputs con double.TryParse.
- Detiene la ejecución con return si la entrada es inválida, evitando cálculos incorrectos.
- Muestra el resultado solo si ambos valores son válidos.
*/