/******************************************************************************
 * ENUNCIADO:
 * 6. Escribe un programa que convierta grados Celsius a grados Fahrenheit.
 * El programa debe solicitar al usuario que ingrese una temperatura en
 * grados Celsius, luego convertir esa temperatura a Fahrenheit utilizando
 * la fórmula F=C*9/5+32 y finalmente mostrar la temperatura en
 * grados Fahrenheit.
 ******************************************************************************/


#include <iostream>

using namespace std;

int main() {
	double celsius, fahrenheit;

	cout << "Ingrese la temperatura en grados Celsius: ";
	cin >> celsius;

	fahrenheit = celsius * 9.0 / 5.0 + 32;

	cout << "La temperatura en grados Fahrenheit es: " << fahrenheit << endl;

	return 0;
}

