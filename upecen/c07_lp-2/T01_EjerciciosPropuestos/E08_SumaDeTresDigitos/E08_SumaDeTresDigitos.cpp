/******************************************************************************
 * ENUNCIADO:
 * 8. Diseñe un programa que lea un número entero de tres dígitos y calcule
 * la suma de sus dígitos.
 ******************************************************************************/

#include <iostream>

using namespace std;

int main() {
	int numero;

	cout << "Ingrese un número entero de tres dígitos: ";
	cin >> numero;

	// Aseguramos trabajar con el valor absoluto por si se ingresa un negativo
	int numAbs = abs(numero);

	if (numAbs >= 100 && numAbs <= 999) {
		int d1 = numAbs / 100;         // Centenas
		int d2 = (numAbs / 10) % 10;   // Decenas
		int d3 = numAbs % 10;          // Unidades

		int suma = d1 + d2 + d3;
		cout << "La suma de los dígitos es: " << suma << endl;
	}
	else {
		cout << "El número ingresado no es de tres dígitos." << endl;
	}

	return 0;
}

