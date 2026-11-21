#include <stdio.h>

// El punto de entrada del programa DEBE ser la función main
int main() { 
    int edad;
    char genero;

    printf("Ingresa su edad: ");
    scanf("%d", &edad);

    printf("Ingresa su genero (M para masculino, F para femenino): ");
    scanf(" %c", &genero);

    if (edad >= 18) { 
        if (genero == 'F' || genero == 'f') {
            printf("Es una MUJER ADULTA.\n");
        }
        else if (genero == 'M' || genero == 'm') {
            printf("Es un HOMBRE ADULTO.\n");
        }
        else {
            printf("Genero no valido.\n");
        }
    }
    else { 
        printf("Es MENOR DE EDAD.\n");
    }
    
    // Un programa de consola normalmente devuelve 0 si no hay errores
    return 0; 
}