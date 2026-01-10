/*
Construya un pseudocódigo, que dado los datos enteros A y B, escriba el resultado
de la siguiente expresión: ((A+B)^2)/3

*/


partial class Program
{
    static void FormulaBasica()
    {
        System.Console.Write("A? ");
        string? inputNumA = System.Console.ReadLine();
        if (!double.TryParse(inputNumA, out double numA))
        {
            System.Console.WriteLine("Ingrese sólo números reales!");
            return;
        }
        System.Console.Write("B? ");
        string? inputNumB = System.Console.ReadLine();
        if (!double.TryParse(inputNumB, out double numB))
        {
            System.Console.WriteLine("Ingrese sólo números reales!");
            return;
        }

        double result = Math.Round(Math.Pow((numA + numB), 2)/3, 3);

        System.Console.WriteLine($"El resultado es {result}");

    }

}