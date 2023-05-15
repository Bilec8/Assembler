//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************
#include <stdio.h>


long mocnina(long t_N);
int prvocislo(int t_N);
void posloupnost( int *tp_pole, int t_N, int t_A0, int t_Q );
long str_to_long( char *tp_cislo );


// Functions
// void some_asm_function();

// Variables
// type g_some_c_variable;




int main()
{
	int t_N = 23;
	if(t_N == 1){
		printf("%d neni prvocislo.\n",t_N);
	}else{
		if(prvocislo(t_N) == 1){
			printf("%d je prvocislo.\n",t_N);
		}else{
			printf("%d neni prvocislo.\n",t_N);
		}
	}

	long moc=17;
	printf("Cislo %ld je %ld x delitelno mocninou cisla 2\n",moc,mocnina(moc));

	int pole[ 10 ] = {1,2,3,4,5,6,7,8,9,10};
	int t_N2 = 10;
	int t_A0 = 150;
	int t_Q;

	posloupnost(pole, t_N2, t_A0, t_Q);

	for(int i=0;i<10;i++){
		printf("%d  ",pole[i]);
	}

	char tp_cislo[] = "okoko";



	return 0;
}
