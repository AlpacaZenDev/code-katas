/*
   EJERCICIO 6:
   Ingresar números enteros hasta que estén en el rango (20–30)
   o se ingrese 0. Sumar solo los valores mayores a 0.
*/

#include <iostream>
using namespace std;

int main() {
    int num;
    int suma = 0;

    do {
        cout << "Ingrese numero (rango 20-30 o 0 para terminar): ";
        cin >> num;

        if(num > 0) {
            suma += num;
        }

    } while((num < 20 || num > 30) && num != 0);

    cout << "La suma de los valores positivos es: " << suma << endl;

    return 0;
}
