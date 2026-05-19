/*
 * 4. Diseña un programa que tome un numero y determine si es par o impar.
 */

#include <iostream>

using namespace std;

int main() {
    cout << "\033[41m#### PAR O IMPAR ####\033[0m" << endl;

    cout << "Ingrese un numero entero: ";
    int num;
    
    while (!(cin >> num)) {
        cout << "\033[31mEl valor ingresado es incorrecto!\033[0m" << endl;
        cin.clear();
        cin.ignore(10000, '\n');
        cout << "Ingrese un numero entero: ";
    }

    if (num % 2 == 0) {
        cout << "El numero es PAR" << endl;
    } else {
        cout << "El numero es IMPAR" << endl;
    }

    return 0;
}