/******************************************************************************
 * ENUNCIADO:
 * 9. Diseñe un programa que lea un número entero menor que 1000 y
 * determine cuántos dígitos tiene.
 ******************************************************************************/

#include <iostream>
#include <cmath>

using namespace std;

int main() {
	int numero;

	cout << "Ingrese un número entero menor que 1000: ";
	cin >> numero;

	if (numero < 1000) {
		int numAbs = abs(numero); // Valor absoluto, para manejo de números negativos
		int digitos = 0;

		if (numAbs == 0) {
			digitos = 1;
		}
		else if (numAbs < 10) {
			digitos = 1;
		}
		else if (numAbs < 100) {
			digitos = 2;
		}
		else {
			digitos = 3;
		}

		cout << "El número tiene " << digitos << " dígito(s)." << endl;
	}
	else {
		cout << "Error: El número debe ser menor que 1000." << endl;
	}

	return 0;
}

