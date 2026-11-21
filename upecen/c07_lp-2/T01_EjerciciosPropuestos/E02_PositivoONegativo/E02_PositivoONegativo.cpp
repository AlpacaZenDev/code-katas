/******************************************************************************
 * ENUNCIADO:
 * 2. Escribe un programa que tome como entrada un número y determine si
 * es positivo o negativo.
 ******************************************************************************/

#include <iostream>

using namespace std;

int main() {
	double numero;

	cout << "Ingrese un número: ";
	cin >> numero;

	if (numero >= 0) {
		cout << "El número es positivo." << endl;
	}
	else {
		cout << "El número es negativo." << endl;
	}

	return 0;
}