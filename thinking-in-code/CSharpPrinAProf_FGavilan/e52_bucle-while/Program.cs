namespace e52_bucle_while
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int contador = 1;
            int limite = 10;

            while (contador <= limite)
            {
                Console.WriteLine(contador);
                contador++;
            }
        }
    }
}
