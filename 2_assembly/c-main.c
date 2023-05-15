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


long g_pole[10] = {1,2,3,4,5,-6,-7,-8,-9,-10};
char retezec[] = "Ahoj.tohle je zkouska.";
char g_char = '_';

int g_pole_int[10] = {1,2,3,4,5,6,9,8,55,23};


void nastav_prom();
void char_to_long();
void swap();
void int_to_char();
void negation();
void change();
void divide();

int main()
{
	nastav_prom();
	printf("1.Cviceni:\n");
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

	negation();
		printf("\n\n\n2. Cviceni:\nNegace pole:  ");
		for(int i=0;i<10;i++){
			printf("%ld ",g_pole[i]);
		}
		printf("\n");

	change();
	printf("%s\n",retezec);

	divide();
	for(int i=0;i<10;i++){
		printf("%d ",g_pole_int[i]);
	}
}
