namespace e50_patrones_logicos
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Ejemplo 1: not
            //string? apellido = null;
            //apellido = "Gavilan";

            //if (apellido is not null)
            //{
            //    Console.WriteLine(apellido.ToUpper());
            //}


            // Ejemplo 2: and
            var temperatura = 43;

            var resultado = temperatura switch
            {
                < 37 => "Puede que tengas baja el azúcar",
                37 => "Temperatura normal",
                >= 38 and < 39 => "Fiebre",
                >= 39 and < 43 => "Debes recibir aistencia médica",
                >= 43 => "omae wa mou shindeiru"
            };
            Console.WriteLine(resultado);


            // Ejemplo 3: or
            //var hoy = DateTime.Today;

            //var estacion = hoy.Month switch
            //{
            //    3 or 4 or 5 => "Otoño",
            //    6 or 7 or 8 => "Invierno",
            //    9 or 10 or 11 => "Primavera",
            //    12 or 1 or 2 => "Verano",
            //    _ => throw new ApplicationException("Mes incorrecto")
            //};
            //Console.WriteLine(estacion);
        }
    }
}
