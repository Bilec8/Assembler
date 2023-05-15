//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>

// Functions
// void some_asm_function();

// Variables
// type g_some_c_variable;

int prom = 0x4F534154;
int g_prom;
char ch_array[4] = {1,-1,2,-2};
long g_long[4];

char array[4] = "niki";

char array2[5];


void nastav_prom();
void char_to_long();
void swap();
void int_to_char();

int main()
{
	nastav_prom();
	printf("Prom = %d\n",g_prom);

	char_to_long();
	for(int i=0;i<4;i++){
		printf("1. Cislo : %ld\n",g_long[i]);
	}


	printf("Slovo pred prehozenim: %s\n", array);
	swap();
	printf("Slovo po prehozeni: %s\n",array);

	int_to_char();
	printf("Hexa slovo: %s",array2);
}
