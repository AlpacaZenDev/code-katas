

/*
Ejemplo 1.1
Elabore un algoritmo y su pseudocódigo para calcular e imprimir el área de un triángulo.
*/

partial class Program
{
    static void AreaTriangulo()
    {
        System.Console.WriteLine("introduce la base del rectángulo: ");
        string baseInput = System.Console.ReadLine();
        double baseRectangulo = double.Parse(baseInput);
        double alturaRectangulo = 20;
        double areaRectangulo = baseRectangulo * alturaRectangulo;
        System.Console.WriteLine($"Area: {areaRectangulo}");
    }   
}

