/******************************************************************************
 * ENUNCIADO:
 * 1. Escribe un programa que pida al usuario el radio de un círculo y luego
 * calcule y muestre el área de ese círculo.
 * Utiliza la fórmula área = PI * radio^2. Puedes considerar PI como 3.1416.
 ******************************************************************************/

#include <iostream>
#include <cmath>

using namespace std;

int main() {
    double radio, area;
    const double PI = 3.1416;

    cout << "Ingrese el radio del círculo: ";
    cin >> radio;

    area = PI * pow(radio, 2);

    cout << "El área del círculo es: " << area << endl;

    return 0;
}

