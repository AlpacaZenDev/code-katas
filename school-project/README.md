# School Project

This project is designed to demonstrate various programming concepts in C, including conditional statements, loops (for, while, and do-while), and the use of a switch-case structure to manage different exercises.

## Project Structure

```
school-project
├── src
│   ├── main.c
│   ├── exercises
│   │   ├── conditional_statements.c
│   │   ├── for_loops.c
│   │   ├── while_loops.c
│   │   └── do_while_loops.c
├── include
│   ├── conditional_statements.h
│   ├── for_loops.h
│   ├── while_loops.h
│   └── do_while_loops.h
├── Makefile
└── README.md
```

## Description of Files

- **src/main.c**: The entry point of the application. It uses a switch-case structure to call each exercise related to conditional statements, for loops, while loops, and do-while loops.

- **src/exercises/conditional_statements.c**: Implements the conditional statements exercise, prompting the user for age and gender, and displaying the appropriate message based on the input.

- **src/exercises/for_loops.c**: Demonstrates the use of for loops, including examples such as iterating through an array or performing a specific task a set number of times.

- **src/exercises/while_loops.c**: Demonstrates the use of while loops, including examples such as reading user input until a certain condition is met.

- **src/exercises/do_while_loops.c**: Demonstrates the use of do-while loops, ensuring that user input is processed at least once.

- **include/conditional_statements.h**: Declares the functions and constants used in the `conditional_statements.c` file.

- **include/for_loops.h**: Declares the functions and constants used in the `for_loops.c` file.

- **include/while_loops.h**: Declares the functions and constants used in the `while_loops.c` file.

- **include/do_while_loops.h**: Declares the functions and constants used in the `do_while_loops.c` file.

- **Makefile**: Contains the build instructions for compiling the project, specifying how to compile the source files and link them into an executable.

## How to Build and Run

1. Open a terminal and navigate to the project directory.
2. Run `make` to compile the project.
3. Execute the program with `./main` (or `main.exe` on Windows).
4. Follow the prompts to explore each exercise.

## Exercises Overview

- **Conditional Statements**: User inputs age and gender, and the program outputs whether the user is an adult male, adult female, or a minor.
- **For Loops**: Examples of iterating through arrays or performing tasks a specific number of times.
- **While Loops**: Continuously read user input until a certain condition is met.
- **Do-While Loops**: Ensure that user input is processed at least once before checking the condition.

Feel free to explore and modify the code to enhance your understanding of these programming concepts!