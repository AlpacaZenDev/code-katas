namespace e49_patrones_relacionales
{
    internal class Program
    {
        static void Main(string[] args)
        {

            var temperatura = 37;
            var mensaje = temperatura switch
            {
                37 => "Temperatura normal",
                > 37 => "Tienes fiebre",
                < 37 => "Tienes baja el azúcar"
            };
            Console.WriteLine(mensaje);

        }
    }
}
