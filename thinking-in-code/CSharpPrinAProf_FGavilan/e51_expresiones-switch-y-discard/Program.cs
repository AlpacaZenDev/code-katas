namespace e51_expresiones_switch_y_discard
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int lugar = 8;

            var mensaje = lugar switch
            {
                1 => "Quedaste en primer lugar",
                2 => "Quedaste en segundo lugar",
                3 => "Quedaste en tercer lugar",
                4 or 5 => "Casi lo lograste",
                _ => "Mejor suerte para la próxima"
            };
            Console.WriteLine(mensaje);
        }
    }
}
