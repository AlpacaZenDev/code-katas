#include <iostream>
using namespace std;

int main() {
    int a, b;
    cout << "Determinar el mayor de dos numeros\n";
    cout << "Ingrese el primer numero: ";
    cin >> a;
    cout << "Ingrese el segundo numero: ";
    cin >> b;
    if (a > b) {
        cout << "El mayor es: " << a << endl;
    } else if (b > a) {
        cout << "El mayor es: " << b << endl;
    } else {
        cout << "Ambos numeros son iguales." << endl;
    }
    return 0;
}
