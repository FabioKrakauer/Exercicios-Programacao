#include <stdio.h>

int por_cima(int matrix[3][3]);
int por_baixo(int matrix[3][3]);
int main(void)
{

    int number = -1;
    int list[9];
    int counter = 0;

    while (scanf("%d", &number) != EOF) {
	if (counter < 9) {
	    list[counter] = number;
	    counter++;
	}
	if (counter == 9) {
	    int matrix[3][3];
	    int toMatrix = 0;

	    for (int j = 0; j < 3; j++) {
		matrix[0][j] = list[toMatrix];
		toMatrix++;
	    }
	    for (int j = 0; j < 3; j++) {
		matrix[1][j] = list[toMatrix];
		toMatrix++;
	    }
	    for (int j = 0; j < 3; j++) {
		matrix[2][j] = list[toMatrix];
		toMatrix++;
	    }
	    if (por_cima(matrix) == 1) {
		printf("Por baixo\n");
	    } else if (por_baixo(matrix) == 1) {
		printf("Por cima\n");
	    } else {
		printf("Nao pode atravessar\n");
	    }
	    counter = 0;
	}
    }
    return 0;
}

int por_cima(int matrix[3][3])
{
    if (matrix[1][0] == 0 && matrix[2][0] == 0 && matrix[2][1] == 0) {
	return 1;
    } else {
	return 0;
    }
}

int por_baixo(int matrix[3][3])
{
    if (matrix[0][1] == 0 && matrix[0][2] == 0 && matrix[1][2] == 0) {
	return 1;
    } else {
	return 0;
    }
}
