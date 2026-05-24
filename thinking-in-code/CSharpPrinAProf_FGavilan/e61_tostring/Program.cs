namespace e61_tostring
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var cantidad1 = 5;

            if (cantidad1.ToString() == "5")
            {
                Console.WriteLine("Son iguales");
            }
            else
            {
                Console.WriteLine("No son iguales");
            }
        }
    }
}
