// Programa libre: Primos en un rango
// Muestra todos los numeros primos entre dos valores dados por el usuario
#include <iostream>
using namespace std;

bool esPrimo(int n) {
    if (n < 2) return false;
    for (int i = 2; i * i <= n; i++) {
        if (n % i == 0) return false;
    }
    return true;
}

int main() {
    int inicio, fin;
    cout << "PROGRAMA LIBRE: Primos en un rango" << endl;
    cout << "Ingrese el valor inicial: ";
    cin >> inicio;
    cout << "Ingrese el valor final: ";
    cin >> fin;
    cout << "Numeros primos entre " << inicio << " y " << fin << ": ";
    for (int n = inicio; n <= fin; n++) {
        if (esPrimo(n)) cout << n << " ";
    }
    cout << endl;
    return 0;
}
