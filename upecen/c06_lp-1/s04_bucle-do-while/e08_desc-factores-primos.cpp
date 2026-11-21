/*
   EJERCICIO 8:
   Descomposición en factores primos de un número entero.
*/

#include <iostream>
using namespace std;

int main() {
    int n;
    cout << "Ingrese un numero entero: ";
    cin >> n;

    int divisor = 2;

    cout << "Factores primos: ";

    do {
        if(n % divisor == 0) {
            cout << divisor << " ";
            n /= divisor;
        } else {
            divisor++;
        }

    } while(n > 1);

    cout << endl;

    return 0;
}
