namespace e65_introduccion_a_los_arreglos
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Ejemplo 1: Arreglos de chars

            char[] vocales = new char[5];

            vocales[0] = 'a';
            vocales[1] = 'e';
            vocales[2] = 'i';
            vocales[3] = 'o';
            vocales[4] = 'u';

            var segundaVocal = vocales[1];
            Console.WriteLine(segundaVocal);

            //var vocalMagica = vocales[5]; // Error: No hay un sexto elemento

            foreach (var vocal in vocales)
            {
                Console.WriteLine(vocal);
            }

            // Ejemplo 2: Arreglo de enteros

            int[] primeros6Numeros = new int[6] { 1, 2, 3, 4, 5, 6 };

            foreach (var numero in primeros6Numeros)
            {
                Console.Write($"{numero} ");
            }

        }
    }
}
