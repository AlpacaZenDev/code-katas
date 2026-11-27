#include <iostream>

using namespace std;

int main() {
    double nota1, nota2, promedio;

    cout << "Ingresa la primera nota: ";
    cin >> nota1;

    cout << "Ingresa la segunda nota: ";
    cin >> nota2;

    promedio = (nota1 + nota2) / 2.0;

    cout << "El promedio es: " << promedio << endl;

    return 0;
}


