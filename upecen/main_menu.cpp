#include <iostream>
#include <cstdlib>

// Declaracion de funciones para cada ejercicio
void ejercicio_s01();
void ejercicio_s02();
void ejercicio_s03();
void ejercicio_s04();
void ejercicio_s05();

int main() {
    int opcion;

    do {
        std::cout << "\n===== MENU PRINCIPAL =====\n";
        std::cout << "1. Ejercicios de Algoritmia\n";
        std::cout << "2. Ejercicios de Condicionales\n";
        std::cout << "3. Ejercicios de Bucle For\n";
        std::cout << "4. Ejercicios de Bucle Do-While\n";
        std::cout << "5. Ejercicios de Case\n";
        std::cout << "0. Salir\n";
        std::cout << "Seleccione una opcion: ";
        std::cin >> opcion;

        switch (opcion) {
            case 1:
                ejercicio_s01();
                break;
            case 2:
                ejercicio_s02();
                break;
            case 3:
                ejercicio_s03();
                break;
            case 4:
                ejercicio_s04();
                break;
            case 5:
                ejercicio_s05();
                break;
            case 0:
                std::cout << "Saliendo del programa...\n";
                break;
            default:
                std::cout << "Opcion no valida. Intente de nuevo.\n";
        }
    } while (opcion != 0);

    return 0;
}

void ejercicio_s01() {
    int opcion;
    do {
        std::cout << "\n===== Ejercicios de Algoritmia (s01) =====\n";
        std::cout << "1. Suma de dos numeros (PSeInt)\n";
        std::cout << "2. Area de un triangulo (PSeInt)\n";
        std::cout << "3. Par o impar (PSeInt)\n";
        std::cout << "4. Numeros del 1 al 5 (PSeInt)\n";
        std::cout << "5. Promedio de 3 numeros (PSeInt)\n";
        std::cout << "0. Regresar al menu principal\n";
        std::cout << "Seleccione una opcion: ";
        std::cin >> opcion;
        switch (opcion) {
            case 1:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s01_algoritmia/e01_pseint_suma.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e01_pseint_suma.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e01_pseint_suma.exe\"");
                break;
            case 2:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s01_algoritmia/e02_area_triangulo.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e02_area_triangulo.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e02_area_triangulo.exe\"");
                break;
            case 3:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s01_algoritmia/e03_par_impar.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e03_par_impar.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e03_par_impar.exe\"");
                break;
            case 4:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s01_algoritmia/e04_numeros_1_al_5.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e04_numeros_1_al_5.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e04_numeros_1_al_5.exe\"");
                break;
            case 5:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s01_algoritmia/e05_promedio_3_numeros.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e05_promedio_3_numeros.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e05_promedio_3_numeros.exe\"");
                break;
            case 0:
                std::cout << "Regresando al menu principal...\n";
                break;
            default:
                std::cout << "Opcion no valida. Intente de nuevo.\n";
        }
    } while (opcion != 0);
}

// Definiciones de funciones para cada grupo de ejercicios
void ejercicio_s02() {
    int opcion;
    do {
        std::cout << "\n===== Ejercicios de Condicionales (s02) =====\n";
            std::cout << "1. Condicional simple (C++)\n";
        std::cout << "2. Par o impar\n";
        std::cout << "3. Mayor de dos numeros\n";
        std::cout << "4. Anio bisiesto\n";
        std::cout << "0. Regresar al menu principal\n";
        std::cout << "Seleccione una opcion: ";
        std::cin >> opcion;

        switch (opcion) {
            case 1:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s02_condicionales/e01_condicional_simple.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e01_condicional_simple.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e01_condicional_simple.exe\"");
                break;
            case 2:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s02_condicionales/e02_par_impar.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e02_par_impar.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e02_par_impar.exe\"");
                break;
            case 3:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s02_condicionales/e03_mayor_de_dos.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e03_mayor_de_dos.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e03_mayor_de_dos.exe\"");
                break;
            case 4:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s02_condicionales/e04_bisiesto.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e04_bisiesto.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e04_bisiesto.exe\"");
                break;
            case 0:
                std::cout << "Regresando al menu principal...\n";
                break;
            default:
                std::cout << "Opcion no valida. Intente de nuevo.\n";
        }
    } while (opcion != 0);
}

void ejercicio_s03() {
    int opcion;
    do {
        std::cout << "\n===== Ejercicios de Bucle For (s03) =====\n";
        std::cout << "1. Numeros del 1 al 10\n";
        std::cout << "2. Suma de numeros del 1 al 100\n";
        std::cout << "3. Tabla de multiplicar de un numero\n";
        std::cout << "4. Factorial de un numero\n";
        std::cout << "5. Contar numeros pares e impares\n";
        std::cout << "0. Regresar al menu principal\n";
        std::cout << "Seleccione una opcion: ";
        std::cin >> opcion;

        switch (opcion) {
            case 1:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s03_blucle-for/e01_numeros_1_al_10.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e01_numeros_1_al_10.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e01_numeros_1_al_10.exe\"");
                break;
            case 2:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s03_blucle-for/e02_suma_1_al_100.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e02_suma_1_al_100.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e02_suma_1_al_100.exe\"");
                break;
            case 3:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s03_blucle-for/e03_tabla_multiplicar.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e03_tabla_multiplicar.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e03_tabla_multiplicar.exe\"");
                break;
            case 4:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s03_blucle-for/e04_factorial.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e04_factorial.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e04_factorial.exe\"");
                break;
            case 5:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s03_blucle-for/e05_contar_pares_impares.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e05_contar_pares_impares.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/e05_contar_pares_impares.exe\"");
                break;
            case 0:
                std::cout << "Regresando al menu principal...\n";
                break;
            default:
                std::cout << "Opcion no valida. Intente de nuevo.\n";
        }
    } while (opcion != 0);
}

void ejercicio_s04() {
    int opcion;
    do {
        std::cout << "\n===== Ejercicios de Bucle Do-While (s04) =====\n";
        std::cout << "1. Numeros del 1 al 5\n";
        std::cout << "2. Sumar hasta negativo\n";
        std::cout << "3. Sumar hasta ingresar 0\n";
        std::cout << "4. Solicitar contrasenia\n";
        std::cout << "5. Leer caracteres hasta x\n";
        std::cout << "6. Suma rango 20-30\n";
        std::cout << "7. Fibonacci\n";
        std::cout << "8. Desc. factores primos\n";
        std::cout << "0. Regresar al menu principal\n";
        std::cout << "Seleccione una opcion: ";
        std::cin >> opcion;

        switch (opcion) {
            case 1:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s04_bucle-do-while/e01_numeros-hasta-5.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s04_01.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s04_01.exe\"");
                break;
            case 2:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s04_bucle-do-while/e02_sumar-hasta-negativo.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s04_02.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s04_02.exe\"");
                break;
            case 3:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s04_bucle-do-while/e03_sumar-hasta-ingresar-0.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s04_03.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s04_03.exe\"");
                break;
            case 4:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s04_bucle-do-while/e04_solicitar-contrasenia.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s04_04.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s04_04.exe\"");
                break;
            case 5:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s04_bucle-do-while/e05_leer-caracteres-hasta-x.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s04_05.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s04_05.exe\"");
                break;
            case 6:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s04_bucle-do-while/e06_suma-rango-20-30.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s04_06.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s04_06.exe\"");
                break;
            case 7:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s04_bucle-do-while/e07_fibonacci.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s04_07.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s04_07.exe\"");
                break;
            case 8:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s04_bucle-do-while/e08_desc-factores-primos.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s04_08.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s04_08.exe\"");
                break;
            case 0:
                std::cout << "Regresando al menu principal...\n";
                break;
            default:
                std::cout << "Opcion no valida. Intente de nuevo.\n";
        }
    } while (opcion != 0);
}

void ejercicio_s05() {
    int opcion;
    do {
        std::cout << "\n===== Ejercicios de Case (s05) =====\n";
        std::cout << "1. Dia de la semana\n";
        std::cout << "2. Operaciones matematicas\n";
        std::cout << "3. Meses del anio\n";
        std::cout << "4. Cajero automatico\n";
        std::cout << "5. Gestion del cliente\n";
        std::cout << "6. Operaciones binarias\n";
        std::cout << "0. Regresar al menu principal\n";
        std::cout << "Seleccione una opcion: ";
        std::cin >> opcion;

        switch (opcion) {
            case 1:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s05_case/01_dia-de-la-semana.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s05_01.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s05_01.exe\"");
                break;
            case 2:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s05_case/02_operaciones-matematicas.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s05_02.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s05_02.exe\"");
                break;
            case 3:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s05_case/03_meses-del-anio.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s05_03.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s05_03.exe\"");
                break;
            case 4:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s05_case/04_cajero-automatico.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s05_04.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s05_04.exe\"");
                break;
            case 5:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s05_case/05.gestion-del-cliente.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s05_05.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s05_05.exe\"");
                break;
            case 6:
                system("g++ \"c:/Users/Zen/Downloads/code-katas-main/upecen/s05_case/06_operaciones-binarias.cpp\" -o \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s05_06.exe\" && \"c:/Users/Zen/Downloads/code-katas-main/upecen/output/s05_06.exe\"");
                break;
            case 0:
                std::cout << "Regresando al menu principal...\n";
                break;
            default:
                std::cout << "Opcion no valida. Intente de nuevo.\n";
        }
    } while (opcion != 0);
}