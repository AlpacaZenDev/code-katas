/*
 * 12. Crear una clase Numero que almacene un numero entero y muestre el
 * doble de dicho numero. [cite: 15]
 */

#include <iostream>

using namespace std;

class Numero {
private:
    int valor;

public:
    void setValor(int v) { valor = v; }
    int obtenerDoble() { return valor * 2; }
};

int main() {
    cout << "\033[41m#### CALCULAR EL DOBLE ####\033[0m" << endl;

    int n;
    cout << "Ingrese un numero entero: ";
    while (!(cin >> n)) {
        cout << "\033[31mValor incorrecto. Ingrese un entero: \033[0m";
        cin.clear();
        cin.ignore(10000, '\n');
    }

    Numero obj;
    obj.setValor(n);

    cout << "El doble del numero ingresado es: " << obj.obtenerDoble() << endl;

    return 0;
}