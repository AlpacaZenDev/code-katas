// Programa que calcule la suma de los numeros del 1 al N

#include <iostream>
using namespace std;

int main() {
    int N, suma = 0;
    cout << "Ingrese un numero N: ";
    cin >> N;

    for (int i = 1; i <= N; i++) {
        suma += i;
    }

    cout << "La suma es: " << suma << endl;
    return 0;
}

