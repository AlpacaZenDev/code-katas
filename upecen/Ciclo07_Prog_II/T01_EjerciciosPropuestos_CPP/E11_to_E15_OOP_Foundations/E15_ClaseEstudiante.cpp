/*
 * 15. Crear una clase Estudiante con nombre y nota final. Mostrar si el
 * estudiante esta aprobado o desaprobado. [cite: 18]
 */

#include <iostream>
#include <string>

using namespace std;

class Estudiante {
private:
    string nombre;
    double notaFinal;

public:
    void cargarDatos() {
        cout << "Nombre del estudiante: ";
        getline(cin >> ws, nombre);
        
        cout << "Nota final (0-20): ";
        while (!(cin >> notaFinal) || notaFinal < 0 || notaFinal > 20) {
            cout << "\033[31mNota invalida. Ingrese un valor entre 0 y 20: \033[0m";
            cin.clear();
            cin.ignore(10000, '\n');
        }
    }

    void determinarEstado() {
        cout << "Estudiante: " << nombre << endl;
        // Considerando 10.5 o 11 como nota minima aprobatoria
        if (notaFinal >= 10.5) {
            cout << "Estado: \033[32mAPROBADO\033[0m" << endl;
        } else {
            cout << "Estado: \033[31mDESAPROBADO\033[0m" << endl;
        }
    }
};

int main() {
    cout << "\033[41m#### ESTADO ACADEMICO ####\033[0m" << endl;

    Estudiante est;
    est.cargarDatos();
    est.determinarEstado();

    return 0;
}