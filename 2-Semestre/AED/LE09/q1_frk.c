#include <stdlib.h>
#include <stdio.h>
#define MAX_VALUE(x, y) x > y ? x : y

struct node {
    int value;
    int height;
    struct node *dad;
    struct node *left;
    struct node *right;

};
struct tree {
    struct node *head;
};

struct node* find_dad_node(struct node *node, int num);
void update_height(struct node *n);
int get_height(struct node *n);
struct node * insert_avl(struct node *n, int num, struct node *real_root);
struct node * rotate_right(struct node *n);
struct node * rotate_left(struct node *n);
struct node * double_rotate_left(struct node *n);
struct node * double_rotate_right(struct node *n);
void print_in_pre_order(struct node *node);

int isRotated = 0;
int main(void) {
    struct node *root;
    root = NULL;


    int num = 0;
    while(scanf("%d", &num) != EOF) {
        printf("\n----");
        printf("\nAdicionando %d", num);
        root = insert_avl(root, num, root);
        if(isRotated == 1) {
            printf("\nDepois de ajustar balanceamento...\n  ");
            print_in_pre_order(root);
        }else{
            printf("\nContinuou AVL...\n  ");
            print_in_pre_order(root);
        }

        isRotated = 0;
    }
    printf("\n----");
}

struct node * insert_avl(struct node *n, int num, struct node *real_root) {
    if(n == NULL) {
        n = (struct node *)malloc(sizeof(struct node));
        n->value = num;
        n->left = NULL;
        n->right = NULL;
        n->height = 1;
    }else {
        if(num < n->value) {
            n->left = insert_avl(n->left, num, real_root);
            if((get_height(n->left) - get_height(n->right)) == 2) {
                printf("\nAntes de ajustar balanceamento...\n  ");
                print_in_pre_order(real_root);
                if(num <= n->left->value) {
                    n = rotate_right(n);
                    isRotated = 1;
                }else{
                    n = double_rotate_right(n);
                    isRotated = 1;
                }
            }
        } else{
            n->right = insert_avl(n->right, num, real_root);
            if((get_height(n->right) - get_height(n->left)) == 2) {
                printf("\nAntes de ajustar balanceamento...\n  ");
                print_in_pre_order(real_root);
                if(num >= n->right->value) {
                    isRotated = 1;
                    n = rotate_left(n);
                }else{
                    n = double_rotate_left(n);
                    isRotated = 1;
                }
            }
        }
        update_height(n);
    }
    return n;
}

struct node * rotate_right(struct node *n) {
    struct node *aux = (struct node *)malloc(sizeof(struct node));
    aux = n->left;
    n->left = aux->right;
    aux->right = n;
    update_height(n->right);
    update_height(n);
    return aux;

}

struct node * rotate_left(struct node *n) {
    struct node *aux = (struct node *)malloc(sizeof(struct node));
    aux = n->right;
    n->right = aux->left;
    aux->left = n;
    update_height(n->left);
    update_height(n);
    return aux;
}
struct node * double_rotate_left(struct node *n) {
    struct node *aux = (struct node *)malloc(sizeof(struct node));
    n->right = rotate_right(n->right);
    aux = rotate_left(n);
    return aux;

}
struct node * double_rotate_right(struct node *n) {
    struct node *aux = (struct node *)malloc(sizeof(struct node));
    n->left = rotate_left(n->left);
    aux = rotate_right(n);
    return aux;
}

void print_in_pre_order(struct node *node) {
    struct node *n = node;
    if(n != NULL){
        printf(" (");
		printf(" %d ", n->value);
		print_in_pre_order(n->left);
		print_in_pre_order(n->right);
		printf(") ");
    }else{
        printf(" () ");
    }
}

int get_height(struct node *n) {
    if(n != NULL) {
        return n->height;
    }else{
        return 0;
    }
}
void update_height(struct node *n)
{

        if (n != NULL) {
                n->height = (MAX_VALUE(get_height(n->right), get_height(n->left))) + 1;
        }
}