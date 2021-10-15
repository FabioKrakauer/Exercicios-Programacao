#include <stdio.h>
#include <stdlib.h>

struct pile {
    int value;
    struct pile *next;
};
void push(struct pile *pilha, int value);
void pop(struct pile *pilha);
void absolute(struct pile *pilha);

int main(){
    struct pile *head = NULL;
    head = (struct item *) malloc(sizeof(struct pile));
    head->next = NULL;

    char function[5];
    int value = 0;

    while(scanf("%s", function) != EOF) {
        if(!strcmp(function, "push")) {
            scanf("%d", &value);
            push(head, value);
        }else if(!strcmp(function, "pop")) {
            pop(head);
        }else if(!strcmp(function, "abs")) {
            absolute(head);

        }
    }
    return 0;
}

void push(struct pile *head, int value) {
    struct pile *node = (struct pile *)malloc(sizeof(struct pile));
    node->value = value;
    node->next = head->next;
    head->next = node;
}
void pop(struct pile *head) {
    struct pile *nodeToRemove = head->next;
    head->next = nodeToRemove->next;
    printf("%d\n", nodeToRemove->value);
    free(nodeToRemove);
    
}
void absolute(struct pile *head) {
    int max_value = 0;
    int min_value = 1001;
    struct pile *n = head;

    while(n->next != NULL){
        if(n->next->value > max_value) {
            max_value = n->next->value;
        }
        if(n->next->value < min_value) {
            min_value = n->next->value;
        }
        n = n->next;
    }
    if(min_value == 1001){
        printf("0\n");
    }else{
        printf("%d\n", max_value - min_value);
    }
}