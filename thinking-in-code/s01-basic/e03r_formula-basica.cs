

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


/*

📝 Puntos positivos:
- Usa métodos separados para validación y cálculo, lo que mejora la legibilidad y reutilización.
- Valida la entrada del usuario correctamente con TryParse y un bucle.
- El cálculo utiliza Math.Round para redondear el resultado a 3 decimales, lo cual es adecuado para mostrar resultados claros.
*/