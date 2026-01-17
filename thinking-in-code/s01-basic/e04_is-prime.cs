



partial class Program
{
    
    static void PrimeNumber()
    {
        System.Console.Write("Número entero? ");
        int num = int.Parse(System.Console.ReadLine());


        int countDivisors = 0;
        for (int divisor = 1; divisor <= num; divisor++)
        {
            if (num % divisor == 0)
            {
                countDivisors++; 
            }
        }
        if (countDivisors >= 3) {
            System.Console.WriteLine("No es un número Primo");
        } else {
            System.Console.WriteLine("Número Primo");
        }
    }   



}