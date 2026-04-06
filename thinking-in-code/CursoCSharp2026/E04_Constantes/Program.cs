namespace E04_Constantes
{
    class Program
    {
        public const string NOMBRE = "Pedro";
        public const int NUMERO_MAXIMO_DE_PEDIDOS = 10;
        static void Main(string[] args)
        {
            for (int i = 0; i < 15; i++)
            {
                if (i < NUMERO_MAXIMO_DE_PEDIDOS)
                {
                    int result = i;
                    Console.WriteLine(result);
                }
            }
        }


    }
}
