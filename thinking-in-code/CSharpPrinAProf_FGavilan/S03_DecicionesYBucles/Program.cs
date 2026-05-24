namespace S03_DecicionesYBucles
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //var cantidad1 = 5;
            //var cantidad2 = 9;

            //var esCantidad1IgualACantidad2 = cantidad1 == cantidad2;  // true
            //var esCantidad1DiferenteACantidad2 = cantidad1 != cantidad2; // false

            //Console.WriteLine($"Son iguales: {esCantidad1IgualACantidad2}");
            //Console.WriteLine($"Son diferentes: {esCantidad1DiferenteACantidad2}");

            //var esCantidad1MenorQue10 = cantidad1 < 10;
            //var esCantidad1MayorQue10 = cantidad1 > 10;

            string? apellido = null;
            var estaElApellidoenMasyusculas = apellido is not null && apellido == apellido.ToUpper();
            Console.WriteLine($"Está el apellido en mayúsculas? {estaElApellidoenMasyusculas}");

        }

    }
}
