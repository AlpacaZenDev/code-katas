namespace E06_switch
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var numero = 7;

            switch (numero)
            {
                case 1:
                    Console.WriteLine("Es uno");
                    break;
                case 2:
                    Console.WriteLine("Es dos");
                    break;
                case 7:
                    Console.WriteLine("Es siete");
                    break;
                case 15:
                    Console.WriteLine("Es quince");
                    break;
                default:
                    Console.WriteLine("Sin coincidencia");
                    break;
            }


            //if (numero == 1)
            //{
            //    Console.WriteLine("Es uno");
            //}
            //else if (numero == 2)
            //{
            //    Console.WriteLine("Es dos");
            //}
            //else if (numero == 7)
            //{
            //    Console.WriteLine("Es siete");
            //}
            //else if (numero == 15)
            //{
            //    Console.WriteLine("Es quince");
            //}
            //else
            //{
            //    Console.WriteLine("No coincide");
            //}
        }
    }
}
