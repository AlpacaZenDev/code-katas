namespace e48_sentencia_switch
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var lugar = 5;
            //if (lugar == 1)
            //{
            //    Console.WriteLine("Obtuviste el primer premio");
            //}
            //else if (lugar == 2)
            //{
            //    Console.WriteLine("Obtuviste el segundo premio");
            //}
            //else if (lugar == 3)
            //{
            //    Console.WriteLine("Obtuviste el tercer premio");
            //}
            //else
            //{
            //    Console.WriteLine("Mejor suerte para la próxima");
            //}

            switch (lugar)
            {
                case 1:
                    Console.WriteLine("Obtuviste el primer premio");
                    break;
                case 2:
                    Console.WriteLine("Obtuviste el segundo premio");
                    break;
                case 3:
                    Console.WriteLine("Obtuviste el tercer premio");
                    break;
                default:
                    Console.WriteLine("Mejor suerte para la próxima");
                    break;
            }

        }
    }
}
