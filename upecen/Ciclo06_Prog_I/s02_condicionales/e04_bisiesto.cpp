#include <iostream>
using namespace std;

int main() {
    int anio;
    cout << "Comprobar si un anio es bisiesto\n";
    cout << "Ingrese un anio: ";
    cin >> anio;
    if ((anio % 4 == 0 && anio % 100 != 0) || (anio % 400 == 0)) {
        cout << "El anio es bisiesto." << endl;
    } else {
        cout << "El anio no es bisiesto." << endl;
    }
    return 0;
}
