/******************************************************************************
 * Ejercicio 04: Búsqueda de Stock por Código
 * * Enunciado:
 * Se tiene una lista con los códigos de 7 productos disponibles. Un cliente
 * llega preguntando por un código específico, y el cajero necesita un
 * sistema rápido que le diga si el producto está en stock o no.
 ******************************************************************************/

#include <iostream>
using namespace std;

int main() {
	int productos[7];
	int codigoBuscado;

	cout << "=== Registro de codigos de productos (sin repetidos) ===" << endl;

	for (int i = 0; i < 7; i++) {
		int codigo;
		bool repetido;

		do {
			repetido = false;

			cout << "Ingrese el codigo del producto " << (i + 1) << ": ";
			cin >> codigo;

			// Verificar si ya existe
			for (int j = 0; j < i; j++) {
				if (productos[j] == codigo) {
					repetido = true;
					cout << "Codigo repetido. Ingrese uno diferente." << endl;
					break;
				}
			}

		} while (repetido);

		productos[i] = codigo;
	}

	cout << "\n=== Busqueda de productos (ingrese 0 para salir) ===" << endl;

	while (true) {
		cout << "\nIngrese el codigo que desea buscar: ";
		cin >> codigoBuscado;

		if (codigoBuscado == 0) {
			cout << "\nSaliendo del sistema..." << endl;
			break;
		}

		bool encontrado = false;

		for (int i = 0; i < 7; i++) {
			if (productos[i] == codigoBuscado) {
				encontrado = true;
				break;
			}
		}

		if (encontrado) {
			cout << "El producto SI esta en stock." << endl;
		}
		else {
			cout << "El producto NO esta en stock." << endl;
		}
	}

	return 0;
}
