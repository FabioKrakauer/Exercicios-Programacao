#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int min(int val1, int val2, int val3);
int main(void)
{

    int matrix_size = 0;

    scanf("%d", &matrix_size);
    int matrix[matrix_size][matrix_size];
    int copy[matrix_size][matrix_size];

    for (int i = 0; i < matrix_size; i++) {
	for (int j = 0; j < matrix_size; j++) {
	    scanf("%d", &matrix[i][j]);
	    copy[i][j] = matrix[i][j];
	}
    }
    int maxValue = 0;

    for (int i = 1; i < matrix_size; i++) {
	for (int j = 1; j < matrix_size; j++) {
	    if (copy[i][j] > 0) {
		int val1 = copy[i - 1][j - 1];
		int val2 = copy[i - 1][j];
		int val3 = copy[i][j - 1];
		int minValue = min(val1, val2, val3);

		copy[i][j] = minValue + 1;
	    }
	    if (matrix[i][j] == 0) {
		copy[i][j] = 0;
	    }
	    if (copy[i][j] > maxValue) {
		maxValue = copy[i][j];
	    }
	}
    }

    if (matrix_size == 1 && matrix[0][0] == 1) {
	maxValue = 1;
    }
    int total = maxValue * maxValue;

    printf("%d", total);
}

int min(int val1, int val2, int val3)
{
    int lessValue = val1;

    if (val2 < lessValue) {
	lessValue = val2;
    }
    if (val3 < lessValue) {
	lessValue = val3;
    }
    return lessValue;
}
