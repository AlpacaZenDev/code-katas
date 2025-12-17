#include <stdio.h>
#include "conditional_statements.h"
#include "for_loops.h"
#include "while_loops.h"
#include "do_while_loops.h"

int main() {
    int choice;

    do {
        printf("Seleccione un ejercicio:\n");
        printf("1. Condicionales\n");
        printf("2. Bucles For\n");
        printf("3. Bucles While\n");
        printf("4. Bucles Do-While\n");
        printf("5. Salir\n");
        printf("Ingrese su elección: ");
        scanf("%d", &choice);

        switch (choice) {
            case 1:
                ejercicio_condicionales();
                break;
            case 2:
                ejercicio_for_loops();
                break;
            case 3:
                ejercicio_while_loops();
                break;
            case 4:
                ejercicio_do_while_loops();
                break;
            case 5:
                printf("Saliendo del programa.\n");
                break;
            default:
                printf("Opción no válida. Intente de nuevo.\n");
        }
    } while (choice != 5);

    return 0;
}