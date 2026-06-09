namespace E01_AreaCirculo
{
    /*
    * Escribe un programa que pida al usuario el radio de un círculo y luego 
    * calcule y muestre el área de ese círculo. Utiliza la fórmula área = PI * radio^2. 
    * Puedes considerar PI como 3.1416.
    */
    internal class Program
    {
        private const double PI = 3.1416;
        static void Main(string[] args)
        {
            Console.WriteLine("### CALCULA EL ÁREA DEL CÍRCULO ###");
            Console.Write("Ingrese el valor del rádio: ");
            double radio = ValidarRadioInput();

            double area = PI * Math.Pow(radio, 2);

            Console.WriteLine($"\nEl área calculada es: {Math.Round(area, 2)}");
            Console.WriteLine("Presione una tecla para salir...");
            Console.ReadKey();
        }

        /// <summary>
        /// Valida que el valor ingresado por el usuario sea del tipo double.
        /// Por ahora sólo retorna '0' para valores incorrectos, aunque bien se 
        /// puede usar un while.
        /// </summary>
        /// <returns>Valor del radio como double</returns>
        /// Disclaimer: Sé bien sobre la crítica acerca que los comentarios de documentación (XML Comments)
        /// como este, deben describir qué hace el código, no mis dudas o lo que me faltó por hacer.
        /// Entiendo que si un programador usa mi método, no quiere saber que tuve pereza de poner 
        /// un while; sino que quiere saber qué esperar. Sólo que esto lo hice como una excusa para
        /// comparar entre un 'if' vs un 'while' para este contexto.

        static double ValidarRadioInput()
        {
            if (double.TryParse(Console.ReadLine(), out double resultado))
            {
                return resultado;
            }
            Console.WriteLine("Valor ingresado es erróneo!");
            return 0;
        }
    }
}
