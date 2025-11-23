/*
   EJERCICIO 7:
   Generar la serie Fibonacci: 1 1 2 3 5 8 13 ... N
   Se ingresa la cantidad de términos.
*/

#include <iostream>
using namespace std;

int main() {
    int n;
    cout << "Cantidad de terminos: ";
    cin >> n;

    int a = 1, b = 1, c;
    int contador = 1;

    do {
        if(contador == 1 || contador == 2) {
            cout << "1 ";
        } else {
            c = a + b;
            cout << c << " ";
            a = b;
            b = c;
        }

        contador++;

    } while(contador <= n);

    return 0;
}
