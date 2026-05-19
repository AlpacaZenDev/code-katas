/*
 * 13. Crear una clase Operacion que permita ingresar dos numeros y mostrar
 * su suma. [cite: 16]
 */

#include <iostream>

using namespace std;

class Operacion {
public:
    double calcularSuma(double a, double b) {
        return a + b;
    }
};

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

int main() {
    cout << "\033[41m#### SUMA DE DOS NUMEROS ####\033[0m" << endl;

    cout << "Primer numero: ";
    double n1 = ValidarNumeroReal();
    cout << "Segundo numero: ";
    double n2 = ValidarNumeroReal();

    Operacion op;
    cout << "Resultado de la suma -> " << op.calcularSuma(n1, n2) << endl;

    return 0;
}