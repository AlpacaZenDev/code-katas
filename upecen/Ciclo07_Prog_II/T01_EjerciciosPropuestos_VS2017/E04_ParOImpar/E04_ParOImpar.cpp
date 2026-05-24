/******************************************************************************
 * ENUNCIADO:
 * 4. Diseña un programa que tome un número y determine si es par o impar.
 ******************************************************************************/

#include <iostream>

using namespace std;

int main() {
	int numero;

	cout << "Ingrese un número entero: ";
	cin >> numero;

	if (numero % 2 == 0) {
		cout << "El número es par." << endl;
	}
	else {
		cout << "El número es impar." << endl;
	}

	return 0;
}

