#include <iostream>
using namespace std;

int main() {
    int edad;
    char genero;
    cout << "Condicional simple\n";
    cout << "Ingresa su edad: ";
    cin >> edad;
    cout << "Ingresa su genero (M para masculino, F para femenino): ";
    cin >> genero;
    if (edad >= 18) {
        if (genero == 'F' || genero == 'f') {
            cout << "Es una MUJER ADULTA." << endl;
        } else if (genero == 'M' || genero == 'm') {
            cout << "Es un HOMBRE ADULTO." << endl;
        } else {
            cout << "Genero no valido." << endl;
        }
    } else {
        cout << "Es MENOR DE EDAD." << endl;
    }
    return 0;
}
