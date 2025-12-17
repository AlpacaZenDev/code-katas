#include <stdio.h>
#include "for_loops.h"

void for_loops_exercise() {
    int i;
    int sum = 0;
    int numbers[5] = {1, 2, 3, 4, 5};

    // Example 1: Iterating through an array
    printf("Iterating through an array:\n");
    for (i = 0; i < 5; i++) {
        printf("Element %d: %d\n", i, numbers[i]);
    }

    // Example 2: Calculating the sum of the first 10 natural numbers
    printf("Calculating the sum of the first 10 natural numbers:\n");
    for (i = 1; i <= 10; i++) {
        sum += i;
    }
    printf("Sum: %d\n", sum);
}