

/*
Ejemplo 1.1
Elabore un algoritmo y su pseudocódigo para calcular e imprimir el área de un triángulo.
*/

/*
Solución altervativa con separación de responsabilidades.
*/

partial class Program
{
    static void AreaTrianguloRev()
    {
        System.Console.WriteLine("\nCalcula el Área del Tríangulo (REV)");
        double baseTriangulo = ValidarDouble("Base del triángulo? ");
        double alturaTriangulo = ValidarDouble("Altura del triángulo? ");
        double area = CalcularAreaTriangulo(baseTriangulo, alturaTriangulo);
        System.Console.WriteLine($"» Area del triángulo: {area}u²");
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
        return Math.Abs((b * h) * 0.5);
    }
}



/*
Características clave:
- Separación clara de responsabilidades: entrada, validación y cálculo están en métodos distintos.
- Interfaz de usuario mejorada: mensajes claros y uso de símbolos para una presentación profesional.
- Validación robusta: asegura que solo se acepten valores numéricos válidos.
- Manejo de valores negativos: el área siempre se muestra como un valor positivo.
- Código reutilizable y fácil de mantener.
*/