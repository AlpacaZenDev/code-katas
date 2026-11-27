#include <iostream>
#include <iomanip>

using namespace std;

int main() {
    double nota1, nota2, promedio;

    cout << "Ingresa la primera nota (0 - 20): ";
    cin >> nota1;

    cout << "Ingresa la segunda nota (0 - 20): ";
    cin >> nota2;

    if (nota1 < 0 || nota1 > 20 || nota2 < 0 || nota2 > 20) {
        cout << "Error: Las notas deben estar entre 0 y 20." << endl;
        return 1;
    }

    promedio = (nota1 + nota2) / 2.0;

    cout << fixed << setprecision(2);
    cout << "\nPromedio final: " << promedio << endl;

    if (promedio >= 10.5) {
        cout << "Estado: APROBADO" << endl;
    } else {
        cout << "Estado: DESAPROBADO" << endl;
    }

    return 0;
}


