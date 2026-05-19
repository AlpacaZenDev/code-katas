/*
 * 5. Escribe un programa que tome como entrada un numero del 1 al 7 y
 * escriba el dia de la semana correspondiente.
 */

#include <iostream>
#include <string>

using namespace std;

int main() {
    cout << "\033[41m#### DIA DE LA SEMANA ####\033[0m" << endl;

    cout << "Ingrese un numero (1-7): ";
    int dia;
    
    while (!(cin >> dia)) {
        cout << "\033[31mEl valor ingresado es incorrecto!\033[0m" << endl;
        cin.clear();
        cin.ignore(10000, '\n');
        cout << "Ingrese un numero (1-7): ";
    }

    string dias[] = {"Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"};

    if (dia >= 1 && dia <= 7) {
        cout << "El dia correspondiente es: " << dias[dia - 1] << endl;
    } else {
        cout << "\033[31mNumero fuera de rango.\033[0m" << endl;
    }

    return 0;
}