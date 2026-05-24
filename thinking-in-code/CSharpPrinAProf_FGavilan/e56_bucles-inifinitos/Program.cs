namespace e57_bucles_inifinitos
{
    internal class Program
    {
        static void Main(string[] args)
        {
            while (true)
            {
                Console.WriteLine("Te damos la bienvenida a la calculadora infinita");
                Console.Write("Ingrese el primer número: ");
                var numero1 = ValidarEntradaUsuario(); // Queda implícito que el validador ya retorna double

                Console.Write("Ingrese el segundo número: ");
                var numero2 = ValidarEntradaUsuario();

                var suma = numero1 + numero2;

                Console.WriteLine($"El resultado de sumar {numero1} y {numero2} es {suma}");
                Console.Write("¿Desea sumar otra vez? (y/n) ");
                var entradaUsuario = Console.ReadLine();

                if (entradaUsuario != "y")
                {
                    break;
                }
            }
            Console.WriteLine("Adios!");
        }

        static double ValidarEntradaUsuario()
        {

            double resultado;

            while (!double.TryParse(Console.ReadLine(), out resultado))
            {
                Console.WriteLine("Ingrese un número con el formato correcto!: ");
            }

            return resultado;

        }
    }
}
