#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct numeros {
    int num;
    int last;
    struct numeros *next;
};

void push(struct numeros* numeros, int valor);
void printList(struct numeros* numeros);
int main(void) {
    printf("oi");
    struct numeros *num = (struct numeros*)malloc(sizeof(struct numeros));
    num->last = 1;
    num->next = NULL;

    push(num, 1);
    push(num, 2);
    push(num, 3);
    push(num, 4);
    push(num, 5);
    printList(num);

}

void push(struct numeros* numeros, int valor) {

    struct numeros *n = numeros;
    while(n->last == 0){
        n->last = 0;
        if(n->next != NULL) {
            n = n->next;
        }else{
            break;
        }
    }
    n->next = (struct numeros*)malloc(sizeof(struct numeros));
    n->next->num = valor;
    n->next->last = 1;
    n->next->next = numeros->next;
    printf("\nadicionando valor %d", n->next->num);

}

void printList(struct numeros* numeros) {

    struct numeros *n = numeros;
    printf("PRINTANDO \n");
    while(n->last == 1){
        printf("\nNumero %d ultimo %d", n->num, n->last);
        n = n->next;
    }
}
