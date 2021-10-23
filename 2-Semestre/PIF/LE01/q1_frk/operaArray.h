#include <stdio.h>

void reverseArray(int *arrayToReverse, int *reversedArray, int array_size) {
    int add = 0;
    for(int i = array_size - 1; i >= 0; i--) {
        reversedArray[add] = arrayToReverse[i];
        add++;
    }
}

void deleteFromArray(int *arrayToDelete, int deleteValue, int *newArray, int array_size) {
    int newSize = 0;
    for(int i = 0; i < array_size; i++) {
        if(i + 1 != deleteValue){
            newArray[newSize] = arrayToDelete[i];
            newSize++;
        }
    }
    return newSize;
}
int showTime(int *arrayToSearch, int value, int array_size){
    int times = 0;
    for(int i = 0; i < array_size; i++) {
        if(arrayToSearch[i] == value) {
            times++;
        }
    }
    return times;
}
int uniques(int *array, int *unique, int array_size){
   int i,j;
   int count = 0;
   for(i = 0; i < array_size; i++){
      for(j = 0; j < array_size; j++){
         if(array[i] == array[j] && i != j)
         break;
      }
      if(j == array_size ){
         unique[count] = array[i];
         ++count;
      }
   }
   return count;
}
void printArray(int *array, int array_size) {
    printf("\nResultado: ");
    for(int i = 0; i < array_size; i++) {
        printf("%d ", array[i]);
    }
    printf("\n");
}