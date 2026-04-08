namespace E15_funciones
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string presentacion = Presentacion("Pedro", "López");
        }

        public static string Presentacion(string nombre, string apellido)
        {
            return $"Mi nombre es {nombre} {apellido}";
        }

    }
}
