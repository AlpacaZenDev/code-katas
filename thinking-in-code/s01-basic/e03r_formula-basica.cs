

partial class Program
{
    static void FormulaBasicaRev()
    {
        System.Console.WriteLine("\nOperación Básica (REV)");
        double inputNumA = ValidarInputs("Num A? ");
        double inputNumB = ValidarInputs("Num B? ");
        double result = CalculateOperation(inputNumA, inputNumB);
        System.Console.WriteLine($"» Resultado = {result}");
    }

    static double ValidarInputs(string message)
    {
        while (true)
        {
            System.Console.Write(message);
            string? input = System.Console.ReadLine();
            if (double.TryParse(input, out double valor))
            {
                return valor;
            }
            System.Console.WriteLine("Ingrese un valor correcto!");
        }
    }

    static double CalculateOperation(double numA, double numB)
    {
        return Math.Round(Math.Pow((numA + numB), 2)/3, 3);
    }


}