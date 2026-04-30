using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace E01_interfaces
{
    public class Car : Program, IEquatable<Car>, IComparacion
    {
        public bool Equals(Car obj)
        {
            throw new NotImplementedException();
        }

        public int EsIgual(int numero)
        {
            throw new NotImplementedException();
        }

        public int EsIgualACoche(int numero)
        {
            throw new NotImplementedException();
        }
    }
}
