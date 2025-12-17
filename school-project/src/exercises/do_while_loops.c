#include <stdio.h>

void do_while_example() {
    int number;
    char choice;

    do {
        printf("Ingresa un numero: ");
        scanf("%d", &number);
        printf("El numero ingresado es: %d\n", number);

        printf("¿Quieres ingresar otro número? (S para sí, N para no): ");
        scanf(" %c", &choice);
    } while (choice == 'S' || choice == 's');
}

int main() {
    do_while_example();
    return 0;
}