/******************************************************************************
 * Ejercicio 05: Control de Inventario de Refrescos y Suma de Lista Enlazada
 * Se registra cuántas cajas de refresco quedan de 8 sabores diferentes.
 * Si el valor es 0, significa que el sabor está agotado. El gerente quiere
 * saber cuántos sabores se han quedado sin existencias para hacer un pedido
 * urgente.
 * Escribe una función llamada int sumarElementos(Nodo* cabeza) que recorra
 * una lista enlazada de números enteros y devuelva la suma de todos los
 * valores almacenados en ella.
 ******************************************************************************/

#include <iostream>

 // Estructura basica del Nodo
struct Nodo {
	int valor;
	Nodo* siguiente;
};

// Funcion solicitada en el enunciado
int sumarElementos(Nodo* cabeza) {
	int suma = 0;
	Nodo* actual = cabeza; // Apuntador para recorrer la lista

	while (actual != nullptr) {
		suma += actual->valor; // Sumar el valor del nodo actual
		actual = actual->siguiente; // Avanzar al siguiente nodo
	}

	return suma;
}

