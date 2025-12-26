// Sumar los numeros del 1 al 100
#include <iostream>
using namespace std;
int main() {
    int suma = 0;
    for (int i = 1; i <= 100; i++) {
        suma += i;
    }
    cout << "La suma del 1 al 100 es: " << suma << endl;
    return 0;
}
