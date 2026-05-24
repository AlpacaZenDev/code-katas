namespace e62_parse_y_tryparse
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //var cantidadString = "5";

            //int cantidadEntero = int.Parse(cantidadString);

            //cantidadEntero++;

            //Console.WriteLine(cantidadEntero);

            //var cantidadDecimalString = "4.9";

            //var cantidadDecimal = decimal.Parse(cantidadDecimalString);
            //cantidadDecimal++;

            // Ejemplo 3: Booleanos
            //var booleanoString = "true";
            //var booleano 

            // Ejemplo 5: TryParse

            var numeroInput = "5";

            var numeroInputParseado = int.TryParse(numeroInput, out int numeroEntero);

            if (numeroInputParseado)
            {
                numeroEntero++;
                Console.WriteLine(numeroEntero);
            }
            else
            {
                Console.WriteLine($"El valor {numeroInput} no cumple con el formato correcto");
            }


        }

    }
}
