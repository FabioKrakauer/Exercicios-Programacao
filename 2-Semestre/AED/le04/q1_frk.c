#include <stdio.h>

int can_go(int line, int column);
int * peao(int line, int column);
int main() {

    char matrix[8][8];
    for(int i = 0; i < 8; i++) {
        for(int j = 0; j < 8; j++) {
            char space;
            scanf("%c%c", &matrix[i][j], &space);
        }
    }
    printf("IMPRIMINDO MATRIZ!\n");
    for(int i = 0; i < 8; i++) {
        for(int j = 0; j < 8; j++) {
            int* p = peao(i, j);
            printf("\nPeao na casa %d %d pode ir ate (%d , %d) ou (%d %d)", i, j, *p[0][0], *p[0][1], *p[1][0], *p[1][1]);
        }
        printf("\n");
    }
    return 0;
}

int can_go(int line, int column) {
    if(line < 0 || column < 0) {
        return 1;
    }
    if(line > 7 || column || 7) {
        return 1;
    }
    return 0;
}

int * peao(int line, int column) {
    int positions[2][2];
    positions[0][0] = line - 1;
    positions[0][1] = column - 1;
    positions[1][0] = line - 1;
    positions[1][1] = column + 1;
    return positions;
}