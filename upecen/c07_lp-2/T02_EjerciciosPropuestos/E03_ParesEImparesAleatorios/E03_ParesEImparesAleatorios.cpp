/******************************************************************************
 * Ejercicio 03: Clasificación de Números Pares e Impares
 * * Enunciado:
 * Generar una lista de 10 números aleatorios. Se necesita clasificar
 * cuántos de estos números son pares y cuántos son impares para un
 * reporte estadístico.
 ******************************************************************************/

#include <iostream>
#include <cstdlib> // Para rand() y srand()
#include <ctime>   // Para time()

using namespace std;

int main() {
	// Inicializar la semilla para que los numeros sean realmente aleatorios
	srand(time(0));

	int numeros[10];
	int pares = 0;
	int impares = 0;

	cout << "--- Numeros Aleatorios Generados ---" << endl;
	for (int i = 0; i < 10; i++) {
		numeros[i] = rand() % 100 + 1; // Numeros aleatorios entre 1 y 100
		cout << numeros[i] << " ";

		if (numeros[i] % 2 == 0) {
			pares++;
		}
		else {
			impares++;
		}
	}
	cout << endl << "------------------------------------" << endl;
	cout << "Cantidad de numeros pares: " << pares << endl;
	cout << "Cantidad de numeros impares: " << impares << endl;

	return 0;
}

