/*
 * 9. Diseñe un programa que lea un numero entero menor que 1000 y
 * determine cuantos digitos tiene.
 */

#include <iostream>

using namespace std;

int main() {
    cout << "\033[41m#### CONTAR DIGITOS ####\033[0m" << endl;

    int numero;
    cout << "Ingrese un numero entero menor a 1000: ";
    
    while (!(cin >> numero) || numero >= 1000) {
        cout << "\033[31mValor invalido. Debe ser un entero menor a 1000!\033[0m" << endl;
        cin.clear();
        cin.ignore(10000, '\n');
        cout << "Intente de nuevo: ";
    }

    // Usamos el valor absoluto para manejar negativos si fuera el caso
    int n = abs(numero);
    int cantidad = 0;

    if (n == 0) {
        cantidad = 1;
    } else {
        while (n > 0) {
            n /= 10;
            cantidad++;
        }
    }

    cout << "El numero " << numero << " tiene " << cantidad << " digito(s)." << endl;

    return 0;
}