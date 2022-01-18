#include <iostream>
#include <fstream>
#include <stdlib.h>
using namespace std;


int main(int argc, char** argv) {
    if (argc != 5) {
        cout << "./generador extension nhab nres capacidad_max" << endl;
        return 0;
    }

    int extension = stoi(argv[1]);

    string header, footer, fileName;
    switch (extension) {
    case 0:
        fileName = "problemaBasic-rand.pddl";
        header = "(define (problem problemaBasic-rand)\n    (:domain mundo_hotelero)\n";
        footer = "\n	(:goal (forall (?res - reserva) (not (pendiente ?res))))\n)";
        break;
    case 1:
        fileName = "problemaExt1-rand.pddl";
        header = "(define (problem problemaExt1-rand)\n    (:domain mundo_hotelero_1)\n";
        footer = "\n	(:goal (forall (?res - reserva) (not (pendiente ?res))))\n\n    (:metric minimize (coste))\n)";
        break;
    case 2:
        fileName = "problemaExt2-rand.pddl";
        header = "(define (problem problemaExt2-rand)\n    (:domain mundo_hotelero_2)\n";
        footer = "\n	(:goal (forall (?res - reserva) (not (pendiente ?res))))\n\n    (:metric minimize (coste))\n)";
        break;
    case 3:
        fileName = "problemaExt3-rand.pddl";
        header = "(define (problem problemaExt3-rand)\n    (:domain mundo_hotelero_3)\n";
        footer = "\n	(:goal (forall (?res - reserva) (not (pendiente ?res))))\n\n    (:metric minimize (coste))\n)";
        break;
    case 4:
        fileName = "problemaExt4-rand.pddl";
        header = "(define (problem problemaExt4-rand)\n    (:domain mundo_hotelero_4)\n";
        footer = "\n	(:goal (forall (?res - reserva) (not (pendiente ?res))))\n\n    (:metric minimize (+ (* (num-max-capacidad) (descartadas)) (+ (* (/ (num-max-capacidad) 2) (numero-hab-abiertas)) (plazas-desperdiciadas)) ))\n)";
        break;
    default:
        break;
    }

    srand(time(0));
    ofstream file;
    file.open(fileName);

    file << header;
    file << "\t(:objects" << endl << "		";
    int nHab = stoi(argv[2]);
    for (int i = 0; i < nHab; ++i) file << "hab" << i << " ";
    file << "- habitacion" << endl;

    file << "\t\t";
    int nReserva = stoi(argv[3]);
    for (int i = 0; i < nReserva; ++i) file << "res" << i << " ";
    file << "- reserva" << endl;
    file << "\t)";

    file << "\n\n\t(:init" << endl;
    int max_capacitat = stoi(argv[4]);
    for (int i = 0; i < nHab; ++i) {
        int capacitat = rand() % max_capacitat + 1;
        int orientacio = rand() % 4;
        file << "\t\t(= (capacidad hab" << i << ") " << capacitat << ")\n";
        if (extension == 2) file << "\t\t(= (orientacionh hab" << i << ") " << orientacio << ")\n\n";
    }
    file << "\n";

    for (int i = 0; i < nReserva; ++i) {
        int diaIni = rand() % 30 + 1;
        int diaFi = rand() % 10 + 1 + diaIni;
        if (diaFi > 30) diaFi = 30;
        int nHostes = rand() % 4 + 1;
        int orientacio = rand() % 4;
        file << "		(= (dia-inicio res" << i << ") " << diaIni << ")" << endl;
        file << "		(= (dia-fin res" << i << ") " << diaFi << ")" << endl;
        file << "		(= (numero-hospedados res" << i << ") " << nHostes << ")" << endl;
        if (extension == 2) file << "\t\t(= (orientacionr res" << i << ") " << orientacio << ")" << endl;
        file << "\t\t(pendiente res" << i << ")" << endl;
        file << "\n";
    }
    if (extension != 0 and extension != 4) file << "		(= (coste) 0)\n";

    if (extension == 3 or extension == 4) file << "		(= (num-max-capacidad) " << max_capacitat << ")\n";
    if (extension == 4) {
      file << "\t\t(= (numero-hab-abiertas) 0)\n";
      file << "\t\t(= (descartadas) 0)\n";
      file << "\t\t(= (plazas-desperdiciadas) 0)\n";
    }
    file << "	)\n" << footer << "\n";
}
