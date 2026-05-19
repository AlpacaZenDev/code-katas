/*
 * 3. Crea un programa que tome dos numeros como entrada y determine
 * cual de los dos numeros es mayor.
 */

#include <iostream>

using namespace std;

double ValidarNumeroReal();

int main() {
    cout << "\033[41m#### DETERMINA EL MAYOR ####\033[0m" << endl;

    cout << "Primer numero real? ";
    double n1 = ValidarNumeroReal();
    cout << "Segundo numero real? ";
    double n2 = ValidarNumeroReal();

    if (n1 > n2) {
        cout << "De la comparativa -> El numero " << n1 << " es mayor" << endl;
    } else if (n2 > n1) {
        cout << "De la comparativa -> El numero " << n2 << " es mayor" << endl;
    } else {
        cout << "De la comparativa -> Los numeros ingresados son iguales" << endl;
    }

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