#include <iostream>
using namespace std;

int main() {
    int opcion;

    cout << "1. Retirar efectivo\n";
    cout << "2. Traspaso entre cuentas\n";
    cout << "3. Consulta de saldo\n";
    cout << "4. Otras operaciones\n";
    cout << "5. Salir\n";

    cout << "Seleccione una opcion: ";
    cin >> opcion;

    switch(opcion) {
        case 1: cout << "Retirando efectivo..."; break;
        case 2: cout << "Realizando traspaso..."; break;
        case 3: cout << "Consultando saldo..."; break;
        case 4: cout << "Accediendo a otras operaciones..."; break;
        case 5: cout << "Saliendo..."; break;
        default: cout << "Opcion invalida"; break;
    }

    return 0;
}
