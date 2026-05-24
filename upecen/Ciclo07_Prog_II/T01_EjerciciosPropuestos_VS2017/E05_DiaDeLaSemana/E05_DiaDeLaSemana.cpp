/******************************************************************************
 * ENUNCIADO:
 * 5. Escribe un programa que tome como entrada un número del 1 al 7 y
 * escriba el día de la semana correspondiente.
 ******************************************************************************/

#include <iostream>

using namespace std;

int main() {
	int dia;

	cout << "Ingrese un número del 1 al 7: ";
	cin >> dia;

	switch (dia) {
	case 1: cout << "Lunes" << endl; break;
	case 2: cout << "Martes" << endl; break;
	case 3: cout << "Miércoles" << endl; break;
	case 4: cout << "Jueves" << endl; break;
	case 5: cout << "Viernes" << endl; break;
	case 6: cout << "Sábado" << endl; break;
	case 7: cout << "Domingo" << endl; break;
	default: cout << "Número inválido. Debe ser del 1 al 7." << endl; break;
	}

	return 0;
}

