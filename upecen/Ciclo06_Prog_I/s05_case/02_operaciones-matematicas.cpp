#include <iostream>
using namespace std;

int main() {
    char op;
    float num1, num2, resultado;

    cout << "Ingrese una operacion (+, -, *, /): ";
    cin >> op;

    cout << "Ingrese el primer numero: ";
    cin >> num1;
    cout << "Ingrese el segundo numero: ";
    cin >> num2;

    switch(op) {
        case '+':
            resultado = num1 + num2;
            cout << "Resultado: " << resultado;
            break;

        case '-':
            resultado = num1 - num2;
            cout << "Resultado: " << resultado;
            break;

        case '*':
            resultado = num1 * num2;
            cout << "Resultado: " << resultado;
            break;

        case '/':
            if(num2 != 0){
                resultado = num1 / num2;
                cout << "Resultado: " << resultado;
            } else {
                cout << "Error: division entre cero.";
            }
            break;

        default:
            cout << "Operacion invalida.";
            break;
    }

    return 0;
}
