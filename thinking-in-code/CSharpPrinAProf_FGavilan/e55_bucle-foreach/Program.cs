namespace e55_bucle_foreach
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //var nombre = "Felipe";

            //foreach (var letra in nombre)
            //{
            //    Console.Write(letra);
            //}

            for (int i = 0; i < 10; i++)
            {
                if (i == 5) return;
                Console.WriteLine(i);
            }
            Console.WriteLine("Fin");
        }

    }
}
