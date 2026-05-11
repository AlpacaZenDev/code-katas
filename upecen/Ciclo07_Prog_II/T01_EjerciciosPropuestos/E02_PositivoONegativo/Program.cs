namespace E02_PositivoONegativo
{
    /**
     * Escribe un programa que tome como entrada un número y determine si es positivo o negativo.
     */
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.ForegroundColor = ConsoleColor.Red;
            Console.WriteLine("#### POSITIVO O NEGATIVO ####");
            Console.ResetColor();

            Console.Write("Ingrese un número real: ");
            var numero = ValidarNumeroReal();

            string resultado = numero switch
            {
                < 0 => "El número ingresado es negativo",
                > 0 => "El número ingresado es positivo",
                _ => "El número ingresado es cero",
            };
            Console.WriteLine(resultado);
        }

        /// <summary>
        /// Obliga a que el usuario ingrese un número decimal válido por consola.
        /// No retornará hasta que la entrada sea correcta.
        /// </summary>
        /// <returns>Retorna el valor numérico tras lo ingresado por el usuario</returns>

        static double ValidarNumeroReal()
        {
            double resultado;
            while (!double.TryParse(Console.ReadLine(), out resultado))
            {
                Console.WriteLine("Ingrese un número real correcto: ");
            }
            return resultado;
        }
    }
}
