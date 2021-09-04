#include <stdio.h>

int main() {
    int princess = 0;
    int voters = 0;
    scanf("%d", &princess);
    scanf("%d", &voters);

    int matrix[voters][princess];
    for(int i = 0; i < voters; i++) {
        for(int j = 0; j < princess; j++) {
            scanf("%d", &matrix[i][j]);
        }
    }
    for(int j = 0; j < princess; j++) {
        int votes = 0;
        for(int i = 0; i < voters; i++) {
            votes += matrix[i][j];
        }
        int n_pricess = j + 1;
        printf("Princesa %d: %d voto(s)\n", n_pricess, votes);
    }
    return 0;
}