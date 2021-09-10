#include <stdio.h>

int can_go(int line, int column);
int peao(int line, int column, char matrix[8][8]);
int cavalo(int line, int column, char matrix[8][8]);
int bispo(int line, int column, char matrix[8][8]);
int torre(int line, int column, char matrix[8][8]);
int rei(int line, int column, char matrix[8][8]);
int rainha(int line, int column, char matrix[8][8]);
int main() {

    char matrix[8][8];
    for(int i = 0; i < 8; i++) {
        for(int j = 0; j < 8; j++) {
            char space;
            scanf("%c%c", &matrix[i][j], &space);
        }
    }
    int xeque = 0;
    for(int i = 0; i < 8; i++) {
        for(int j = 0; j < 8; j++) {
            char peca = matrix[i][j];
            if(peca == 'p') {
                if(peao(i, j, matrix) == 1){
                    xeque = 1;
                }
            }
            if(peca == 'c') {
                if(cavalo(i, j, matrix) == 1) {
                    xeque = 1;
                }
            }
            if(peca == 'b') {
                if(bispo(i, j, matrix) == 1) {
                    xeque = 1;
                }
            }
            if(peca == 't') {
                if(torre(i, j, matrix) == 1) {
                    xeque = 1;
                }
            }
            if(peca == 'q') {
                if(rainha(i, j, matrix) == 1) {
                    xeque = 1;
                }
            }
            if(peca == 'k') {
                if(rei(i, j, matrix) == 1) {
                    xeque = 1;
                }
            } 
        }
    }
    if(xeque == 1) {
        printf("XEQUE");
    }else{
        printf("NAO XEQUE");
    }
    return 0;
}

int can_go(int line, int column) {
    if(line < 0 || column < 0) {
        return 0;
    }
    if(line > 7 || column > 7) {
        return 0;
    }
    return 1;
}
int peao(int line, int column, char matrix[8][8]) {
    int nextLine = line + 1;
    int nextColumn = column - 1;

    if(can_go(nextLine, nextColumn) == 1){
        char item = matrix[nextLine][nextColumn];
        if(item == 'K') {
            return 1;
        }
    }
    nextColumn = column + 1;
    if(can_go(nextLine, nextColumn) == 1){
        char item = matrix[nextLine][nextColumn];
        if(item == 'K') {
            return 1;
        }
    }
    return 0;
}
int cavalo(int line, int column, char matrix[8][8]) {
    int nextLine = line + 2;
    int nextColumn = column - 1;

    if(can_go(nextLine, nextColumn) == 1){
        char item = matrix[nextLine][nextColumn];
        if(item == 'K') {
            return 1;
        }
    }
    nextColumn = column + 1;
    if(can_go(nextLine, nextColumn) == 1){
        char item = matrix[nextLine][nextColumn];
        if(item == 'K') {
            return 1;
        }
    }
    nextLine = line - 1;
    nextColumn = column + 2;

    if(can_go(nextLine, nextColumn) == 1){
        char item = matrix[nextLine][nextColumn];
        if(item == 'K') {
            return 1;
        }
    }
    nextLine = line + 1;
    if(can_go(nextLine, nextColumn) == 1){
        char item = matrix[nextLine][nextColumn];
        if(item == 'K') {
            return 1;
        }
    }
    
    nextLine = line - 2;
    nextColumn = column - 1;

    if(can_go(nextLine, nextColumn) == 1){
        char item = matrix[nextLine][nextColumn];
        if(item == 'K') {
            return 1;
        }
    }
    nextColumn = column + 1;
    if(can_go(nextLine, nextColumn) == 1){
        char item = matrix[nextLine][nextColumn];
        if(item == 'K') {
            return 1;
        }
    }

    nextLine = line - 1;
    nextColumn = column - 2;

    if(can_go(nextLine, nextColumn) == 1){
        char item = matrix[nextLine][nextColumn];
        if(item == 'K') {
            return 1;
        }
    }
    nextLine = line + 1;
    if(can_go(nextLine, nextColumn) == 1){
        char item = matrix[nextLine][nextColumn];
        if(item == 'K') {
            return 1;
        }
    }
    return 0;
}
int bispo(int line, int column, char matrix[8][8]) {
    int currentColumn = column;
    for(int i = line - 1; i >= 0; i--) {
        currentColumn--;
        if(can_go(i, currentColumn) == 0) {
            break;
        }
        char item = matrix[i][currentColumn];
        if(item == 'K') {
            return 1;
        }
        if(item != '-') {
            break;
        }
    }
    currentColumn = column;
    for(int i = line - 1; i >= 0; i--) {
        currentColumn++;
        if(can_go(i, currentColumn) == 0) {
            break;
        }
        char item = matrix[i][currentColumn];
        if(item == 'K') {
            return 1;
        }
        if(item != '-') {
            break;
        }
    }
    currentColumn = column;
    for(int i = line + 1; i < 8; i++) {
        currentColumn--;
        if(can_go(i, currentColumn) == 0) {
            break;
        }
        char item = matrix[i][currentColumn];
        if(item == 'K') {
            return 1;
        }
        if(item != '-') {
            break;
        }
    }
    currentColumn = column;
    for(int i = line + 1; i < 8; i++) {
        currentColumn++;
        if(can_go(i, currentColumn) == 0) {
            break;
        }
        char item = matrix[i][currentColumn];
        if(item == 'K') {
            return 1;
        }
        if(item != '-') {
            break;
        }
    }
    return 0;
}
int torre(int line, int column, char matrix[8][8]) {
    // cima
    for(int i = line + 1; i < 8; i++){
        if(can_go(i, column) == 0) {
            break;
        }
        char item = matrix[i][column];
        if(item == 'K') {
            return 1;
        }
        if(item != '-') {
            break;
        }
    }
    for(int i = line - 1; i >= 0; i--){
        if(can_go(i, column) == 0) {
            break;
        }
        char item = matrix[i][column];
        if(item == 'K') {
            return 1;
        }
        if(item != '-') {
            break;
        }
    }
    for(int j = column - 1; j >= 0; j--){
        if(can_go(line, j) == 0) {
            break;
        }
        char item = matrix[line][j];
        if(item == 'K') {
            return 1;
        }
        if(item != '-') {
            break;
        }
    }
    for(int j = column + 1; j < 8; j++){
        if(can_go(line, j) == 0) {
            break;
        }
        char item = matrix[line][j];
        if(item == 'K') {
            return 1;
        }
        if(item != '-') {
            break;
        }
    }
    return 0;
}
int rainha(int line, int column, char matrix[8][8]){
    int rainha_as_bispo = bispo(line, column, matrix);
    if(rainha_as_bispo == 1){
        return 1;
    }
    int rainha_as_torre = torre(line, column, matrix);
    if(rainha_as_torre == 1) {
        return 1;
    }
    return 0;
}
int rei(int line, int column, char matrix[8][8]) {

    int nextLine = line + 1;
    int nextColumn = column;
    char peca = matrix[nextLine][nextColumn];
    if(peca == 'K'){
        return 1;
    }

    nextLine = line + 1;
    nextColumn = column + 1;
    peca = matrix[nextLine][nextColumn];
    if(peca == 'K'){
        return 1;
    }

    nextLine = line + 1;
    nextColumn = column - 1;
    peca = matrix[nextLine][nextColumn];
    if(peca == 'K'){
        return 1;
    }

    nextLine = line;
    nextColumn = column - 1;
    peca = matrix[nextLine][nextColumn];
    if(peca == 'K'){
        return 1;
    }

    nextLine = line;
    nextColumn = column + 1;
    peca = matrix[nextLine][nextColumn];
    if(peca == 'K'){
        return 1;
    }

    nextLine = line - 1;
    nextColumn = column;
    peca = matrix[nextLine][nextColumn];
    if(peca == 'K'){
        return 1;
    }

    nextLine = line - 1;
    nextColumn = column - 1;
    peca = matrix[nextLine][nextColumn];
    if(peca == 'K'){
        return 1;
    }

    nextLine = line - 1;
    nextColumn = column + 1;
    peca = matrix[nextLine][nextColumn];
    if(peca == 'K'){
        return 1;
    }
    return 0;
}