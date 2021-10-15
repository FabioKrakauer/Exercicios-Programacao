#include <stdio.h>>


struct node {

    int value;
    struct node *left;
    struct node *right;
    struct node *dad;
};
struct node * search(struct node *arvore, int value);
int main(void) {
    int dads_with_nodes = 0;
    int lines = 0;
    scanf("%d%d", &dads_with_nodes, &lines);

    struct node *tree = (struct node*)malloc(sizeof(struct node));
    


    return 0;
}

struct node *search(struct node *tree, int value) {
    struct node *searchTree = tree;
    while(searchTree->left != NULL) {
        searchTree = tree;
    }
}