/******************************************************************************
 * ENUNCIADO:
 * 7. Diseñe un programa que lea un número entero de dos dígitos y
 * determine si ambos dígitos son iguales
 ******************************************************************************/

#include <iostream>

using namespace std;

int main() {
	int numero;

	cout << "Ingrese un número entero de dos dígitos: ";
	cin >> numero;

	// Validamos que sea estrictamente de dos dígitos (positivo o negativo)
	if ((numero >= 10 && numero <= 99) || (numero <= -10 && numero >= -99)) {
		int d1 = numero / 10;
		int d2 = numero % 10;

		if (d1 == d2) {
			cout << "Ambos dígitos son iguales." << endl;
		}
		else {
			cout << "Los dígitos son diferentes." << endl;
		}
	}
	else {
		cout << "El número ingresado no es de dos dígitos." << endl;
	}

	return 0;
}

