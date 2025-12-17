#include <stdio.h>

void while_loop_example() {
    int number;
    int sum = 0;

    printf("Ingresa números para sumar (0 para terminar): \n");
    while (1) {
        printf("Número: ");
        scanf("%d", &number);
        if (number == 0) {
            break;
        }
        sum += number;
    }

    printf("La suma de los números ingresados es: %d\n", sum);
}

int main() {
    while_loop_example();
    return 0;
}