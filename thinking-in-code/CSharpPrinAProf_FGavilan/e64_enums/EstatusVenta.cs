using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace e64_enums
{
    public enum EstatusVenta
    {
        // Explicito es mejor que implícito...
        Exitoso = 1,
        PendienteDePago = 2,
        Cancelada = 3,
        Desconocido = 4,
    }
}
