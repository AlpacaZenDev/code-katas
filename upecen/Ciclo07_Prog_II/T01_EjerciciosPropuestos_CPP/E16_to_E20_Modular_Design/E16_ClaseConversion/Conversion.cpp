#include "Conversion.h"

Conversion::Conversion(double m) : metros(m) {}

double Conversion::aCentimetros() { return metros * 100.0; }
double Conversion::aMilimetros() { return metros * 1000.0; }