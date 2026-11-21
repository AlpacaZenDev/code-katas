/*
   EJERCICIO 2:
   Ingresar números positivos hasta que se ingrese un negativo.
   Al final mostrar la suma de los números ingresados.
*/

#include <iostream>
using namespace std;

int main() {
    int num;
    int suma = 0;

    do {
        cout << "Ingrese numero positivo (negativo para terminar): ";
        cin >> num;

        if(num >= 0) {
            suma += num;
        }

    } while(num >= 0);

    cout << "La suma total es: " << suma << endl;

    return 0;
}
