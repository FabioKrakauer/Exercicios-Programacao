struct node* find_dad_node(struct node *node, int num) {
    struct node *n = node;
    if(n == NULL) {
        return NULL;
    }
    if(n->left == NULL && n->right == NULL) {
        return n;
    }

    if(num < n->value) {
        if(n->left != NULL){
            return find_dad_node(n->left, num);
        }else{
            return n;
        }
        return NULL;
    }else {
        if(n->right != NULL){
            return find_dad_node(n->right, num);
        }else{
            return n;
        }
        return NULL;
    }
}







void add_tree(struct tree *tree, int num) {
    struct tree *n = tree;

    struct node *newNode = (struct node *)malloc(sizeof(struct node));
    newNode->value = num;
    newNode->left = NULL;
    newNode->right = NULL;
    newNode->height = 0;
    if(n->head == NULL) {
        printf("Adicionando %d a cabeca\n", newNode->value);
        newNode->dad = NULL;
        n->head = newNode;
        return;
    }
    printf("Adicionando %d na arvore\n", newNode->value);
    struct node* dad = find_dad_node(n->head, newNode->value);
    printf("Pai de %d e %d\n", newNode->value, dad->value);
    newNode->dad = dad;
    if(newNode->value < dad->value) {
        printf("%d foi pra esqueda de %d\n", newNode->value, dad->value);
        dad->left = newNode;
    }else{
        printf("%d foi pra direita de %d\n", newNode->value, dad->value);
        dad->right = newNode;
    }
}