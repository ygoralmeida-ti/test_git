#include <iostream>

#include <cstdlib>
using std::atoi;

#include "calcula.h"
#include "mostra.h"
/**
*@brief Funcao principal
*/
int main(int argc, char *argv[]) {

	int valor = atoi(argv[1]);//armezana valor inteiro passado pelo usuario em linha de comando
	int resultadoFatorial = fatorial(&valor);
	int check = resultadoFatorial/2;
	int resultadoPrimo = primo(&resultadoFatorial, &check);
	mostra(&resultadoPrimo);

	return 0;
}