namespace E03_MayorOMenor
{

    /*
     * Crea un programa que tome dos números como entrada y determine cuál de los dos números es mayor.
     */

    internal class Program
    {
        static void Main(string[] args)
        {
            Console.BackgroundColor = ConsoleColor.Red;
            Console.WriteLine("#### DETERMINA EL MAYOR ####");
            Console.ResetColor();

            Console.Write("Primer número real? ");
            double primerNumero = ValidarNumeroReal();
            Console.Write("Segundo número real? ");
            double segundoNumero = ValidarNumeroReal();

            string resultado = (primerNumero, segundoNumero) switch
            {
                _ when primerNumero > segundoNumero => $"El número {segundoNumero} es mayor",
                _ when primerNumero < segundoNumero => $"El número {primerNumero} es mayor",
                _                                   => $"Los número ingresados son iguales"
            };
            Console.WriteLine($"De la comparativa -> {resultado}");
        }

        static double ValidarNumeroReal()
        {
            double resultado;
            while (!double.TryParse(Console.ReadLine(), out resultado))
            {
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine("El valor ingresado es incorrecto!");
                Console.ResetColor();
                Console.Write("Ingrese un número real ");
            }
            return resultado;
        }
    }
}
