/*
 * 10. Crea un programa que tome tres numeros como entrada y determine
 * cual es el numero mas pequeño.
 */

#include <iostream>

using namespace std;

double ValidarNumeroReal();

int main() {
    cout << "\033[41m#### DETERMINAR EL MENOR DE TRES ####\033[0m" << endl;

    cout << "Ingrese el primer numero: ";
    double n1 = ValidarNumeroReal();
    cout << "Ingrese el segundo numero: ";
    double n2 = ValidarNumeroReal();
    cout << "Ingrese el tercer numero: ";
    double n3 = ValidarNumeroReal();

    double menor = n1;

    if (n2 < menor) {
        menor = n2;
    }
    if (n3 < menor) {
        menor = n3;
    }

    cout << "El numero mas pequeño es: " << menor << endl;

    return 0;
}

double ValidarNumeroReal() {
    double resultado;
    while (!(cin >> resultado)) {
        cout << "\033[31mEl valor ingresado es incorrecto!\033[0m" << endl;
        cin.clear();
        cin.ignore(10000, '\n');
        cout << "Ingrese un numero real: ";
    }
    return resultado;
}