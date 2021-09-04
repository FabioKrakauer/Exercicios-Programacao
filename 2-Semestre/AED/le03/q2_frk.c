#include <stdio.h>

int main() {
    
    int lines = 0, columns = 0;
    scanf("%d %d", &lines, &columns);
    int matrix[lines][columns];

    for(int i = 0; i < lines; i++) {
        for(int j = 0; j < columns; j++) {
            scanf("%d", &matrix[i][j]);
        }
    }
    int search_items_quantity = 0;
    scanf("%d", &search_items_quantity);
    int items[search_items_quantity];

    int last_matrix_item = matrix[lines - 1][columns - 1];
    for(int i = 0; i < search_items_quantity; i++){
        int searchFor = 0;
        scanf("%d", &searchFor);
        int show = 0;
        for (int j = 0; j < lines; j++){
            if(searchFor <= matrix[j][columns-1]){
                for (int k = 0; k < columns; k++){
                    if (searchFor == matrix[j][k]){
                        printf("\nYES WITH %d AND %d", j + 1, k + 1);
                        show = 1;
                        break;
                    }
                }
                break;
            }
        }
        if(!show){
            printf("\nNO");
        }
    }
}