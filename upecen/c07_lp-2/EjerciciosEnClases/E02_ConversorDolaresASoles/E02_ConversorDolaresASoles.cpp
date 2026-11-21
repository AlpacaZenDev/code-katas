
#include <iostream>
using namespace std;

int main()
{
    const double TIPO_CAMBIO = 3.75;

    double dolares, soles;

    cout << "--- CONVERSOR DE DOLARES A SOLES ---" << endl;
    cout << "Ingrese la cantidad en dolares: ";
    cin >> dolares;

    soles = dolares * TIPO_CAMBIO;

    cout << "La cantidad en soles es: S/ " << soles << endl;

    return 0;

}
