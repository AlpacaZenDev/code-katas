/******************************************************************************
 * ENUNCIADO:
 * 3. Crea un programa que tome dos números como entrada y determine
 * cuál de los dos números es mayor.
 ******************************************************************************/

#include <iostream>

using namespace std;

int main() {
	double num1, num2;

	cout << "Ingrese el primer número: ";
	cin >> num1;
	cout << "Ingrese el segundo número: ";
	cin >> num2;

	if (num1 > num2) {
		cout << "El primer número (" << num1 << ") es mayor." << endl;
	}
	else if (num2 > num1) {
		cout << "El segundo número (" << num2 << ") es mayor." << endl;
	}
	else {
		cout << "Ambos números son iguales." << endl;
	}

	return 0;
}

