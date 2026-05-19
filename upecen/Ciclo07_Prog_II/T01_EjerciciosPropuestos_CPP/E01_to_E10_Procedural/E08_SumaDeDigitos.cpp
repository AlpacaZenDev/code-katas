/*
 * 8. Diseñe un programa que lea un numero entero de tres digitos y calcule
 * la suma de sus digitos.
 */

#include <iostream>

using namespace std;

int main() {
    cout << "\033[41m#### SUMA DE DIGITOS ####\033[0m" << endl;

    int numero;
    bool esValido = false;

    do {
        cout << "Ingrese un numero entero de tres digitos (100-999): ";
        if (cin >> numero && (numero >= 100 && numero <= 999)) {
            esValido = true;
        } else {
            cout << "\033[31mError: Ingrese un numero valido de tres digitos.\033[0m" << endl;
            cin.clear();
            cin.ignore(10000, '\n');
        }
    } while (!esValido);

    int d1 = numero / 100;         // Primer digito
    int d2 = (numero / 10) % 10;    // Segundo digito
    int d3 = numero % 10;          // Tercer digito

    int suma = d1 + d2 + d3;

    cout << "La suma de los digitos de " << numero << " es: " << suma << endl;

    return 0;
}