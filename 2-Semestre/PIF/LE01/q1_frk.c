#include <stdlib.h>
#include "operaArray.h"

void selectOptions(int *array, int array_size);
void save(int *array, int array_size);
void saveNumber(int number, int times);

int main(void) {
    int array_size = 0;
    printf("Digite o número de elementos da lista: ");
    scanf("%d", &array_size);

    int *array = malloc(array_size * sizeof(int));

    printf("Digite todos os %d elementos\n", array_size);
    for(int i = 0; i < array_size; i++) {
        scanf("%d", &array[i]);
    }
    selectOptions(array, array_size);
    
}

void selectOptions(int *array, int array_size) {
    printf("SELECIONE UMA DAS OPCOES:\n");
    printf("R - Reverter a Lista\n");
    printf("E - Contar um número\n");
    printf("U - Retorna os únicos\n");
    printf("D - Deleta um elementro da lista\n");
    printf("S - Sair\n");
    char function;
    scanf(" %c", &function);
    if(function == 'S' || function == 's') {
        free(array);
        return;
    }
    int *newArray;
    int value = 0;
    switch (function) {
        case 'R':
            newArray = malloc(array_size * sizeof(int));
            reverseArray(array, newArray, array_size);
            printArray(newArray, array_size);
            printf("Você deseja salvar essas infomacoes? (1) para sim (0) para nao: ");
            scanf("%d", &value);
            if(value == 1) {
                save(newArray, array_size);
            }
            free(newArray);
            break;
        case 'E':
            printf("Digite o valor a ser contado: ");
            scanf("%d", &value);
            int times = showTime(array, value, array_size);
            printf("O numero %d apareceu %d vezes!\n", value, times);
            printf("Você deseja salvar essas infomacoes? (1) para sim (0) para nao: ");
            scanf("%d", &value);
            if(value == 1) {
                saveNumber(value, times);
            }
            break;
        case 'U':
            newArray = malloc(array_size * sizeof(int));
            int size = uniques(array, newArray, array_size);
            printArray(newArray, size);
            printf("Você deseja salvar essas infomacoes? (1) para sim (0) para nao: ");
            scanf("%d", &value);
            if(value == 1) {
                save(newArray, size);
            }
            free(newArray);
            break;
        case 'D':
            printf("Digite o valor a ser deletado: ");
            scanf("%d", &value);
            newArray = malloc(array_size * sizeof(int));
            deleteFromArray(array, value, newArray, array_size);
            printArray(newArray, array_size - 1);
            printf("Você deseja salvar essas infomacoes? (1) para sim (0) para nao: ");
            scanf("%d", &value);
            if(value == 1) {
                save(newArray, array_size - 1);
            }
            free(newArray);
            break;
        
        default:
            break;
        }
    selectOptions(array, array_size);
}

void save(int *array, int array_size) {
    FILE *saves;
    saves = fopen("resultados.txt", "a");
    fprintf(saves, "Resultado: [");
    for(int i = 0; i < array_size; i++) {
        if(i == array_size - 1) {
            fprintf(saves, "%d", array[i]);
        }else{
            fprintf(saves, "%d ", array[i]);
        }
    }
    fprintf(saves, "]\n");
    fclose(saves);
}
void saveNumber(int number, int times) {
    FILE *saves;
    saves = fopen("resultados.txt", "a");
    fprintf(saves, "Resultado: O número %d apareceu %d vezes!\n", number, times);
    fclose(saves);
} 