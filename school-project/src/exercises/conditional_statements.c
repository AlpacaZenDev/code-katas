#include <stdio.h>

void conditional_statements() {
    int edad;
    char genero;

    printf("Ingresa su edad: ");
    scanf("%d", &edad);

    printf("Ingresa su genero (M para masculino, F para femenino): ");
    scanf(" %c", &genero); // Note the space before %c to consume any leftover newline character

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
}