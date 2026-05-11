/*
   EJERCICIO 4:
   Pedir una contraseña y negar el acceso mientras no sea 1234.
*/

#include <iostream>
using namespace std;

int main() {
    int pass;

    do {
        cout << "Digite la contrasena: ";
        cin >> pass;

        if(pass != 1234) {
            cout << "Contrasena incorrecta. Intente nuevamente.\n";
        }

    } while(pass != 1234);

    cout << "Acceso permitido." << endl;

    return 0;
}
