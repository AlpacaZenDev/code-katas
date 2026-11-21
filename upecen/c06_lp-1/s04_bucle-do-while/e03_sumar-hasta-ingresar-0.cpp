/*
   EJERCICIO 3:
   Ingresar números positivos hasta que se introduzca 0.
   Mostrar la suma de los números ingresados.
*/

#include <iostream>
using namespace std;

int main() {
    int num;
    int suma = 0;

    do {
        cout << "Ingrese numero (0 para terminar): ";
        cin >> num;

        if(num > 0) {
            suma += num;
        }

    } while(num != 0);

    cout << "La suma total es: " << suma << endl;

    return 0;
}
