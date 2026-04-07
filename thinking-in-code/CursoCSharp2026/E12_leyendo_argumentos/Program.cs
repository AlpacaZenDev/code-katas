namespace E12_leyendo_argumentos
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine($"Hay {args.Length} argumentos");

            foreach (var arg in args)
            {
                Console.WriteLine(arg);
            }
        }
    }
}
