#include <iostream>
using namespace std;

int main() {
    int numero;
    cout << "Verificar si un numero es par o impar\n";
    cout << "Ingrese un numero: ";
    cin >> numero;
    if (numero % 2 == 0) {
        cout << "El numero es par." << endl;
    } else {
        cout << "El numero es impar." << endl;
    }
    return 0;
}
