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

int min(int *array,int n);
void retezec(char *ch_array);
int preved(char *h_array);



int main()
{
	int array[10] = {5,2,10,4,-5,6,7,8,9,-1};
	printf("Nejmensi prvek v poli: %d",min(array,10));

	char ch_array[] = "Ahoj, dnes je krasny den";
	retezec(ch_array);
	printf("\n%s",ch_array);

	char hex[] = "10001000";
	printf("\n%d\n",preved(hex));

}
