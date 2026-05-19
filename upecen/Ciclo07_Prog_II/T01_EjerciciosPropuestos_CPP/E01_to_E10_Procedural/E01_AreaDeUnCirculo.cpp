/*
 * 1. Escribe un programa que pida al usuario el radio de un circulo y luego
 * calcule y muestre el area de ese circulo. Utiliza la formula area = PI * radio^2.
 * Puedes considerar PI como 3.1416.
 */

#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

double ValidarNumeroReal();

int main() {
    cout << "\033[41m#### AREA DEL CIRCULO ####\033[0m" << endl;
    
    cout << "Ingrese el radio del circulo: ";
    double radio = ValidarNumeroReal();
    
    const double PI = 3.1416;
    double area = PI * pow(radio, 2);
    
    cout << "El area del circulo es: " << fixed << setprecision(2) << area << endl;
    
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