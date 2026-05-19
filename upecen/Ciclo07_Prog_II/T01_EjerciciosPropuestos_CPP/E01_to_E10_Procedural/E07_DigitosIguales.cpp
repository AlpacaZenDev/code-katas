/*
 * 7. Diseñe un programa que lea un numero entero de dos digitos y
 * determine si ambos digitos son iguales.
 */

#include <iostream>

using namespace std;

int main() {
    cout << "\033[41m#### DETERMINAR DIGITOS IGUALES ####\033[0m" << endl;

    int numero;
    bool esValido = false;

    do {
        cout << "Ingrese un numero entero de dos digitos (10-99): ";
        if (cin >> numero && (numero >= 10 && numero <= 99)) {
            esValido = true;
        } else {
            cout << "\033[31mError: Debe ser un numero de dos digitos.\033[0m" << endl;
            cin.clear();
            cin.ignore(10000, '\n');
        }
    } while (!esValido);

    int decena = numero / 10;
    int unidad = numero % 10;

    if (decena == unidad) {
        cout << "Los digitos son iguales (" << decena << " y " << unidad << ")" << endl;
    } else {
        cout << "Los digitos son diferentes (" << decena << " y " << unidad << ")" << endl;
    }

    return 0;
}