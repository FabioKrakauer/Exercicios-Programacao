#include <stdio.h>

int main()
{

    int lines = 0;
    int columns = 0;
    scanf("%d %d", &lines, &columns);

    int elements = lines * columns;
    int matriz[lines][columns];
    int less_zero = 0;
    int bigger_zero = 0;

    int diagonal_first = 0;
    int diagonal_second = 0;
    for (int i = 0; i < lines; i++)
    {
        for (int j = 0; j < columns; j++)
        {
            int value = 0;
            scanf("%d", &value);
            matriz[i][j] = value;

            if(value > 0) {
                bigger_zero++;
            }else if(value < 0) {
                less_zero++;
            }
        }
    }
    printf("Matriz formada:\n");
    for (int i = 0; i < lines; i++){
        int values[columns];
        for (int j = 0; j < columns; j++)
        {
            if(j == (columns - 1)) {
                printf("%d", matriz[i][j]);
            }else{
                printf("%d ", matriz[i][j]);
            }

            if(i == j) {
                diagonal_first += matriz[i][j];
            }
            if(i + j == columns - 1) {
                diagonal_second += matriz[i][j];
            }
        }
        printf("\n");
    }

    if(lines != columns) {
        printf("A diagonal principal e secundaria nao pode ser obtida.\n");
    }else{
        printf("A diagonal principal e secundaria tem valor(es) %d e %d respectivamente.\n", diagonal_first, diagonal_second);
    }
    printf("A matriz possui %d numero(s) menor(es) que zero.\n", less_zero);
    printf("A matriz possui %d numero(s) maior(es) que zero.", bigger_zero);
    return 0;
}