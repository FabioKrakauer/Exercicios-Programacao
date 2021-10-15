#include <stdio.h>

struct person {
    int id;
    int age;

    struct person *next;
};

void add(int id, int age, struct person *i, struct person *ni);
void printall(struct person *i, struct person *ni) ;
void updateList(struct person *i, struct person *ni, int count);
void removeFromLists(struct person *i, struct person *ni);

int oldCountMax = 1;
int oldCount = 0;
int main() {

    char function;
    struct person *i = (struct person *)malloc(sizeof(struct person));
    struct person *ni = (struct person *)malloc(sizeof(struct person));
    i->next = NULL;
    ni->next = NULL;
    
    scanf("%d", &oldCountMax);
    scanf("%c", &function);
    while(function != 'f') {
        int id = 0;
        int age = 0;
        if(function == 'a') {
            scanf("%d %d", &id, &age);
            add(id, age, i, ni);
        }else if(function == 'r') {
            removeFromLists(i, ni);
        }else if(function == 'i') {
            printall(i, ni);
        }

        scanf("%c", &function);
    }


    return 0;
}
void add(int id, int age, struct person *i, struct person *ni) {
    struct person *n;
    if(age > 60) {
        n = i;
    }else {
        n = ni;
    }
    while(n->next != NULL ){
        n = n->next;
    }
    n->next = (struct person *)malloc(sizeof(struct person));
    n->next->id = id;
    n->next->age = age;
    n->next->next = NULL;
}

void printall(struct person *i, struct person *ni) {
    printf("\nfila de idosos:\n");
    struct person *n = i;
    if(n->next == NULL){
        printf("fila vazia!\n");
    }
    while(n->next != NULL ){
        printf("ID: %d IDADE: %d\n", n->next->id, n->next->age);
        n = n->next;
    }
    printf("fila de nao-idosos:\n");
    n = ni;
    if(n->next == NULL){
        printf("fila vazia!\n");
    }
    while(n->next != NULL ){
        printf("ID: %d IDADE: %d\n", n->next->id, n->next->age);
        n = n->next;
    }
    printf("----------\n");
}
void removeFromLists(struct person *i, struct person *ni) {
    if(oldCount < oldCountMax) {
        if(sizeOfList(i) == 0) {
            removeFromList(ni);
            oldCount = 0;
            return;
        }
        removeFromList(i);
        oldCount += 1;
    }else{
        removeFromList(ni);
        oldCount = 0;
    }
}
void removeFromList(struct person *list){
    if(list->next == NULL) {
        return;
    }
    if(list->next->next == NULL) {
        list->next = NULL;
        return;
    }
    struct person *first = list->next;
    list->next = first->next;
    free(first);
}
int sizeOfList(struct person *head) {
    int size = 0;
    struct person *n = head;

    while(n->next != NULL) {
        size += 1;
        n = n->next;
    }

    return size;
}