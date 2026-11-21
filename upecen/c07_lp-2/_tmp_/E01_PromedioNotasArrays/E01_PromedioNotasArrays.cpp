/******************************************************************************
 * Ejercicio 01: Promedio de Notas con Arrays
 * * Enunciado:
 * Calcular el promedio de notas de un estudiante (nota1, nota2, nota3),
 * esta debe realizarse con arrays.
 ******************************************************************************/

#include <iostream>
using namespace std;

int main() {
	float notas[3];
	float suma = 0.0;

	cout << "--- Calcular Promedio de Notas ---" << endl;
	for (int i = 0; i < 3; i++) {
		cout << "Ingrese la nota " << i + 1 << ": ";
		cin >> notas[i];
		suma += notas[i];
	}

	float promedio = suma / 3.0;
	cout << "El promedio del estudiante es: " << promedio << endl;

	return 0;
}