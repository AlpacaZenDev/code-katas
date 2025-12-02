#include <iostream>
using namespace std;

int main() {
    int opcion;
    float saldo = 0, monto;

    cout << "1. Ingresar dinero\n";
    cout << "2. Retirar dinero\n";
    cout << "3. Salir\n";
    cout << "Seleccione una opcion: ";
    cin >> opcion;

    switch(opcion) {
        case 1:
            cout << "Ingrese el monto: ";
            cin >> monto;
            saldo += monto;
            cout << "Saldo actual: " << saldo;
            break;

        case 2:
            cout << "Ingrese el monto: ";
            cin >> monto;
            if(monto <= saldo) {
                saldo -= monto;
                cout << "Retiro exitoso. Saldo actual: " << saldo;
            } else {
                cout << "Fondos insuficientes.";
            }
            break;

        case 3:
            cout << "Saliendo...";
            break;

        default:
            cout << "Opcion invalida.";
            break;
    }

    return 0;
}
