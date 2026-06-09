namespace _04_ParOImpar
{

    /*
     * 4. Diseña un programa que tome un número y determine si es par o impar.
     */
    internal class Program
    {

        static void Main(string[] args)
        {
            Console.WriteLine("#### PAR O IMPAR ####");
            Console.Write("Ingrese un número entero ");
            int inputNumber = GetValidInteger();

            string status = IsEven(inputNumber) ? "PAR" : "IMPAR";

            Console.WriteLine($"El número {inputNumber} es {status}");
        }


        /// <summary>
        /// Determina si un número entero es par
        /// </summary>
        /// <param name="number"></param>
        /// <returns>true si es par; de lo contrario, false</returns>
        static bool IsEven(int number) => Math.Pow(-1, number) == 1; // Técnicamante se recomienda: `(number % 2 == 0)` (Rendimiento, Precisión y legibilidad)

        /// <summary>
        /// Solicita y valida la entrada de un número entero por consola
        /// </summary>
        /// <returns>El número entero validado</returns>
        static int GetValidInteger()
        {
            while (true)
            {
                string? input = Console.ReadLine();
                if (int.TryParse(input, out int result))
                {
                    return result;
                }
                else
                {
                    Console.WriteLine($"El número {input} NO es válido!");
                    Console.Write("Ingrese un número entero: ");
                }
            }
        }
    }
}
