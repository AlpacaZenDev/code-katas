// Contar numeros pares e impares entre 1 y 100
#include <iostream>
using namespace std;
int main() {
    int pares = 0, impares = 0;
    for (int i = 1; i <= 100; i++) {
        if (i % 2 == 0) pares++;
        else impares++;
    }
    cout << "Cantidad de pares: " << pares << endl;
    cout << "Cantidad de impares: " << impares << endl;
    return 0;
}
