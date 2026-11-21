// Calcular el factorial de un numero
#include <iostream>
using namespace std;
int main() {
    int n, fact = 1;
    cout << "Ingrese un numero para calcular su factorial: ";
    cin >> n;
    for (int i = 1; i <= n; i++) {
        fact *= i;
    }
    cout << "El factorial de " << n << " es: " << fact << endl;
    return 0;
}
