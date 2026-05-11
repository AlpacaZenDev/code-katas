/*
   EJERCICIO 5:
   Leer caracteres hasta que el usuario escriba una 'X'.
*/

#include <iostream>
using namespace std;

int main() {
    char c;

    do {
        cout << "Ingrese un caracter (X para terminar): ";
        cin >> c;

    } while(c != 'X' && c != 'x'); 

    cout << "Fin del programa." << endl;

    return 0;
}
