#include <iostream>
using namespace std;

int main() {
    int numero;
    cout << "Ingrese un numero del 1 al 7: ";
    cin >> numero;

    switch(numero) {
        case 1: cout << "Lunes"; break;
        case 2: cout << "Martes"; break;
        case 3: cout << "Miercoles"; break;
        case 4: cout << "Jueves"; break;
        case 5: cout << "Viernes"; break;
        case 6: cout << "Sabado"; break;
        case 7: cout << "Domingo"; break;
        default: cout << "Numero invalido"; break;
    }

    return 0;
}
