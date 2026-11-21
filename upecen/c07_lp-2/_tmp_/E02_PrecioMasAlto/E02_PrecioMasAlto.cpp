/******************************************************************************
 * Ejercicio 02: Precio Más Alto de Productos
 * * Enunciado:
 * Calcular el precio más alto registrado en una lista de 6 productos
 * diferentes durante el día para analizar sus ganancias máximas.
 ******************************************************************************/

#include <iostream>
using namespace std;

int main() {
	double precio, mayor;

	cout << "Ingrese el precio del producto 1: ";
	cin >> mayor;  // Tomamos el primero como referencia

	for (int i = 2; i <= 6; i++) {
		cout << "Ingrese el precio del producto " << i << ": ";
		cin >> precio;

		if (precio > mayor) {
			mayor = precio;
		}
	}

	cout << "\nEl precio mas alto registrado es: " << mayor << endl;

	return 0;
}
