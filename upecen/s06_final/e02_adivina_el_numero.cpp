// Juego: Adivina el numero
// El usuario debe adivinar un numero aleatorio entre 1 y 100
#include <iostream>
#include <cstdlib>
#include <ctime>
using namespace std;

int main() {
    srand((unsigned)time(0));
    int numero_secreto = 1 + rand() % 100;
    int intento, intentos = 0;
    cout << "JUEGO: Adivina el numero" << endl;
    cout << "He pensado un numero entre 1 y 100. Intenta adivinarlo!" << endl;
    do {
        cout << "Ingresa tu intento: ";
        cin >> intento;
        intentos++;
        if (intento < numero_secreto) {
            cout << "El numero es mayor!" << endl;
        } else if (intento > numero_secreto) {
            cout << "El numero es menor!" << endl;
        } else {
            cout << "Felicidades! Adivinaste el numero en " << intentos << " intentos." << endl;
        }
    } while (intento != numero_secreto);
    return 0;
}
