/*
 * 2. Escribe un programa que tome como entrada un numero y determine si
 * es positivo o negativo.
 */

#include <iostream>

using namespace std;

double ValidarNumeroReal();

int main() {
    cout << "\033[41m#### POSITIVO O NEGATIVO ####\033[0m" << endl;
    
    cout << "Ingrese un numero: ";
    double num = ValidarNumeroReal();

    if (num > 0) {
        cout << "El numero es positivo." << endl;
    } else if (num < 0) {
        cout << "El numero es negativo." << endl;
    } else {
        cout << "El numero es cero." << endl;
    }

    return 0;
}

double ValidarNumeroReal() {
    double resultado;
    while (!(cin >> resultado)) {
        cout << "\033[31mEl valor ingresado es incorrecto!\033[0m" << endl;
        cin.clear();
        cin.ignore(10000, '\n');
        cout << "Ingrese un numero: ";
    }
    return resultado;
}