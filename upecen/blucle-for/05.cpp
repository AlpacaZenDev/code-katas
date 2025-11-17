// Programa que calcule el factorial de un n�mero:

#include <iostream>
using namespace std;

int main() {
    int N;
    long long factorial = 1;

    cout << "Ingrese un numero para calcular su factorial: ";
    cin >> N;

    if (N < 0) {
        cout << "El factorial no esta definido para numeros negativos." << endl;
    } else {
        for (int i = 1; i <= N; i++) {
            factorial *= i; 
        }
        cout << "El factorial de " << N << " es: " << factorial << endl;
    }

    return 0;
}

