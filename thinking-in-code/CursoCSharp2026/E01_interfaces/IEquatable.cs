using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace E01_interfaces
{
    interface IEquatable<T>
    {
        bool Equals(T obj);
        int EsIgual(int numero);
    }

    public interface IComparacion
    {
        int EsIgualACoche(int numero);
    }
}
