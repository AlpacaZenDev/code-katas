/*
 * 6. Escribe un programa que convierta grados Celsius a grados Fahrenheit.
 * El programa debe solicitar al usuario que ingrese una temperatura en
 * grados Celsius, luego convertir esa temperatura a Fahrenheit utilizando
 * la formula F = C * 9/5 + 32 y finalmente mostrar la temperatura en
 * grados Fahrenheit.
 */

#include <iostream>
#include <iomanip>

using namespace std;

double ValidarNumeroReal();

int main() {
    cout << "\033[41m#### CONVERSOR CELSIUS A FAHRENHEIT ####\033[0m" << endl;

    cout << "Ingrese la temperatura en grados Celsius: ";
    double celsius = ValidarNumeroReal();

    // Formula: F = C * 9/5 + 32
    double fahrenheit = (celsius * 9.0 / 5.0) + 32;

    cout << fixed << setprecision(2);
    cout << celsius << " grados Celsius equivalen a " << fahrenheit << " grados Fahrenheit" << endl;

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