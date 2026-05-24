namespace E74_DeclarandoFunciones
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Ejemplo 1: Funciones simples

            string ObtenerNombre()
            {
                return "Claudia";
            }

            var miNombre = ObtenerNombre();

            var miNombre2 = ObtenerNombre();

            Console.WriteLine($"{miNombre}");
            Console.WriteLine($"{miNombre2}");


            // Ejemplo 2: Funcioón que no retorna nada

            void ImprimirFechaYHoraActual()
            {
                var fechaYHora = DateTime.Now;
                var mensaje = $"Hoy es {fechaYHora.ToString("yyyy-MM-dd hh:mm:ss")}";
                Console.WriteLine(mensaje);
            }
            ImprimirFechaYHoraActual();

        }
    }
}
