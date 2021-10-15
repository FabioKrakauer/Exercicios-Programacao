#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct item {

    char *name;
    int quantity;
    float value;

    struct item *next;
};

void insert(struct item *lista, char name[60], int quantity, float value);
void calculate(struct item *lista);
void removeGroup(struct item *lista, float price);
void search(struct item *lista, char *name);
void delete(struct item *lista, char *name, int quantity);
int main() {

    char function[15];
    char name[60];
    int quantity = 0;
    float value = 0;
    struct item *head = NULL;

    head = (struct item *) malloc(sizeof(struct item));
    while(scanf("%s", function) != EOF){
        if(!strcmp(function, "INSERIR")){
            scanf("%s%f%d", name, &value, &quantity);
            insert(head, name, quantity, value);
        }else if(!strcmp(function, "REMOVER")){
            scanf("%s%d", name, &quantity);
            delete(head, name, quantity);
        }else if(!strcmp(function, "REMOVERGRUPO")){
            scanf("%f", &value);
            removeGroup(head, value);
        }else if(!strcmp(function, "PROCURAR")){
            scanf("%s", name);
            search(head, name);
        }else if(!strcmp(function, "CONSULTAR")){
            calculate(head);
        }
    }
    return 0;
}
void insert(struct item *lista, char name[60], int quantity, float value) {
    struct item *n = lista;
    //1 2 3 5
    while(n->next != NULL){//final da lista
        n = n->next;
    }
    n->next = (struct item *) malloc(sizeof(struct item));
    n->next->name = malloc(strlen(name)+1);
    strcpy(n->next->name , name);
    n->next->quantity = quantity;
    n->next->value = value;
    n->next->next = NULL;
}

void calculate(struct item *lista) {
    float total = 0;
    struct item *n = lista;
    while(n->next != NULL) {
        total += n->next->quantity * n->next->value;
        n = n->next;
    }
    
    printf("\nAtualmente a lista esta em R$%0.1f\n", total);
}

void removeGroup(struct item *lista, float price) {

    struct item *n = lista;
    struct item *temp = lista;
    while(n->next != NULL){
        if(n->next->value > price) {
            temp = n->next;
            n->next = n->next->next;
            free(temp);
        }else{
            n = n->next;
        }
    }
}

void search(struct item *lista, char *name) {
    struct item *n = lista;

    while(n->next != NULL) {
        if(!strcmp(n->next->name, name)){
            printf("\n%s\n- %0.1f\n- %d\n", n->next->name, n->next->value, n->next->quantity);
            return;
        }
        n = n->next;
    }
    printf("\n%s nao foi encontrado.\n", name);
}

void delete(struct item *lista, char *name, int quantity) {
    struct item *n = lista;
    struct item *temp = lista;

    while(n->next != NULL) {
        if(!strcmp(n->next->name, name)){
            n->next->quantity -= quantity;
        }
        if(n->next->quantity == 0) {
            temp = n->next;
            n->next = n->next->next;
            free(temp);
        }else{
            n = n->next;
        }
    }
}