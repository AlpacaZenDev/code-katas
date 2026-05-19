/*
 * 11. Crear una clase Persona que permita ingresar el nombre y la edad de
 * una persona. Mostrar los datos ingresados. [cite: 14]
 */

#include <iostream>
#include <string>

using namespace std;

class Persona {
private:
    string nombre;
    int edad;

public:
    void ingresarDatos() {
        cout << "Ingrese el nombre: ";
        getline(cin >> ws, nombre);
        
        cout << "Ingrese la edad: ";
        while (!(cin >> edad) || edad < 0) {
            cout << "\033[31mEdad invalida. Intente de nuevo: \033[0m";
            cin.clear();
            cin.ignore(10000, '\n');
        }
    }

    void mostrarDatos() {
        cout << "-----------------------------" << endl;
        cout << "Nombre: " << nombre << endl;
        cout << "Edad: " << edad << " años" << endl;
    }
};

int main() {
    cout << "\033[41m#### DATOS DE PERSONA ####\033[0m" << endl;

    Persona p;
    p.ingresarDatos();
    p.mostrarDatos();

    return 0;
}