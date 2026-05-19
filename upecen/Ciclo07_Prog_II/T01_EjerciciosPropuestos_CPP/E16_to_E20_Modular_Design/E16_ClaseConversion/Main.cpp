/*
 * 16. Crear una clase Conversion que convierta una cantidad de metros a 
 * centimetros y milimetros.
 */

#include <iostream>
#include <iomanip>
#include "Conversion.cpp" // Inclusion de la logica de la clase

using namespace std;

// Prototipo de funcion para mantener el estilo de tu Program.cs
double ValidarNumeroReal();

int main() {
    // Encabezado con fondo rojo usando codigos ANSI
    cout << "\033[41m#### CONVERSOR DE LONGITUD ####\033[0m" << endl;

    cout << "Ingrese cantidad en metros: ";
    double metros = ValidarNumeroReal();

    // Instancia de la clase Conversion
    Conversion obj(metros);

    // Formateo de salida y resultados
    cout << fixed << setprecision(2);
    cout << "---------------------------------" << endl;
    cout << "Resultado para " << metros << " metros:" << endl;
    cout << "-> En centimetros: " << obj.aCentimetros() << " cm" << endl;
    cout << "-> En milimetros:  " << obj.aMilimetros() << " mm" << endl;
    cout << "---------------------------------" << endl;

    return 0;
}

/**
 * Metodo para validar que la entrada sea un numero real
 */
double ValidarNumeroReal() {
    double resultado;
    while (!(cin >> resultado)) {
        cout << "\033[31mEl valor ingresado es incorrecto!\033[0m" << endl;
        cin.clear();
        cin.ignore(10000, '\n');
        cout << "Ingrese un numero real: ";
    }
    return resultado;
}