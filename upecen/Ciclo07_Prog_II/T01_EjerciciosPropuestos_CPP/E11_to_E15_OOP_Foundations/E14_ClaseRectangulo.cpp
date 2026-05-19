/*
 * 14. Crear una clase Rectangulo con atributos base y altura. Implementar un
 * metodo que calcule y muestre el area. [cite: 17]
 */

#include <iostream>

using namespace std;

class Rectangulo {
private:
    double base;
    double altura;

public:
    Rectangulo(double b, double h) : base(b), altura(h) {}

    void mostrarArea() {
        double area = base * altura;
        cout << "El area del rectangulo es: " << area << endl;
    }
};

double ValidarPositivo(string campo) {
    double valor;
    cout << "Ingrese " << campo << ": ";
    while (!(cin >> valor) || valor <= 0) {
        cout << "\033[31mValor invalido. Ingrese un numero positivo: \033[0m";
        cin.clear();
        cin.ignore(10000, '\n');
    }
    return valor;
}

int main() {
    cout << "\033[41m#### AREA DEL RECTANGULO ####\033[0m" << endl;

    double b = ValidarPositivo("la base");
    double h = ValidarPositivo("la altura");

    Rectangulo rect(b, h);
    rect.mostrarArea();

    return 0;
}