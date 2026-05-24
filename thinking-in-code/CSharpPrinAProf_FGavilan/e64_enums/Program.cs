namespace e64_enums
{
    internal class Program
    {
        static void Main(string[] args)
        {

            var estatusDeLaVentaDeUnaCamisa = EstatusVenta.Exitoso;

            switch (estatusDeLaVentaDeUnaCamisa)
            {
                case EstatusVenta.Exitoso:
                    Console.WriteLine("La venta fue exitosa");
                    break;
                case EstatusVenta.PendienteDePago:
                    Console.WriteLine("Compra pendiente de pago");
                    break;
                case EstatusVenta.Cancelada:
                    Console.WriteLine("Compra cancelada");
                    break;
            }
            



        }
    }
}
