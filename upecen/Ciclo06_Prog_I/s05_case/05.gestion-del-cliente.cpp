#include <iostream>
using namespace std;

int main() {
    int opcion;

    cout << "1. Datos del cliente\n";
    cout << "2. Consulta de datos\n";
    cout << "3. Modificacion de datos\n";
    cout << "4. Eliminacion de datos\n";

    cout << "Seleccione una opcion: ";
    cin >> opcion;

    switch(opcion) {
        case 1: cout << "Ingresando datos del cliente..."; break;
        case 2: cout << "Consultando datos..."; break;
        case 3: cout << "Modificando datos..."; break;
        case 4: cout << "Eliminando datos..."; break;
        default: cout << "Opcion invalida"; break;
    }

    return 0;
}
