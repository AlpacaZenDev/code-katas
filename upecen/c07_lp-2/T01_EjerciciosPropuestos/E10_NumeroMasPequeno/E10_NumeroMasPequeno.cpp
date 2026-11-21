/******************************************************************************
 * ENUNCIADO:
 * 10. Crea un programa que tome tres números como entrada y determine
 * cuál es el número más pequeño
 ******************************************************************************/

#include <iostream>
#include <algorithm>
using namespace std;

int main() {
	double n1, n2, n3;

	cout << "Ingrese el primer número: ";
	cin >> n1;
	cout << "Ingrese el segundo número: ";
	cin >> n2;
	cout << "Ingrese el tercer número: ";
	cin >> n3;

	double menor = min(n1, min(n2, n3));

	cout << "El número más pequeño es: " << menor << endl;
	return 0;
}


