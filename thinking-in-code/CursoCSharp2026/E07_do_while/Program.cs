namespace E07_do_while
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int numero = 0;

            do
            {
                Console.Write(numero);
                numero++;
                if (numero == 5)
                {
                    return;
                }
            }
            while (numero < 10);

        }
    }
}
