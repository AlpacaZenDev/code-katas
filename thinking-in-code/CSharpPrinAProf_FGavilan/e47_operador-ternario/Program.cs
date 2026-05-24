namespace e47_operador_ternario
{
    internal class Program
    {
        static void Main(string[] args)
        {
            bool usuarioEstaLogueado = true;
            //string? mensajeBienvenida = null;

            //if (usuarioEstaLogueado)
            //{
            //    mensajeBienvenida = "Bienvenido";

            //}
            //else
            //{
            //    mensajeBienvenida = "Loguéate para iniciar";
            //}

            //Console.WriteLine(mensajeBienvenida);

            var mensajeBienvenida = usuarioEstaLogueado ? "Bienvenido" : "Inicie sesión";

        }
    }
}
