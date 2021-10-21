#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// float change_balance(struct dadosClientes *clients, int client_id, float balance);
// void add_client(struct dadosClientes *clients, int id, char *name, char *lastname, float balance);
// void print_clients(struct dadosClientes *clientes);
struct dadosClientes {
    int id;
    char *name;
    char *lastname;
    double balance;

    struct dadosClientes *next;
};
int main(void) {

    struct dadosClientes *clients = (struct dadosClients*)malloc(sizeof(struct dadosClientes));
    clients->next = NULL;
    
    FILE *clients_file, *transactions_file;
    
    int id;
    char name[15];
    char lastname[15];
    double balance;


    clients_file = fopen("CLIENTES.txt", "r");
	while(fscanf(clients_file, "%d%s%s%lf", &id, name, lastname, &balance) != EOF) {
        add_client(clients, id, name, lastname, balance);
    }
    fclose(clients_file);
    transactions_file = fopen("TRANSACTIONS.txt", "r");

    char operation;
    while(fscanf(transactions_file, "%d %c %lf", &id, &operation, &balance) != EOF) {
        if(operation == '-') {
            balance = -(balance);
        }
        change_balance(clients, id, balance);
    }

    create_devedores(clients);
}

void add_client(struct dadosClientes *clients, int id, char *name, char *lastname, double balance) {
    struct dadosClientes *n = clients;
    while(n->next != NULL) {
        n = n->next;
    }
    n->next = malloc(sizeof(struct dadosClientes));
    n->next->id = id;
    n->next->name = malloc(strlen(name)+1);
    n->next->lastname = malloc(strlen(lastname)+1);
    n->next->balance = balance;
    n->next->next = NULL;
    strcpy(n->next->name, name);
    strcpy(n->next->lastname, lastname);
}

void change_balance(struct dadosClientes *clients, int client_id, double balance) {
    
    struct dadosClientes *n = clients;
    while(n->next != NULL) {
        if(n->next->id == client_id) {
            n->next->balance += balance;
            break;
        }
        n = n->next;
    }
}

void print_clients(struct dadosClientes *clientes) {
    struct dadosClientes *n = clientes;

    while(n->next != NULL) {
        printf("# %d - %s %s tem %.2f na conta!\n", n->next->id, n->next->name, n->next->lastname, n->next->balance);
        n = n->next;
    }
}

void create_devedores(struct dadosClientes *clients) {
    struct dadosClientes *n = clients;
    FILE *negatives;
    negatives = fopen("DEVEDORES.txt", "w");
    while(n->next != NULL) {
        if(n->next->balance < 0.0) {
            fprintf(negatives, "%d %s %s %.2lf\n", n->next->id, n->next->name, n->next->lastname ,n->next->balance);
        }
        n = n->next;
    }
    fclose(negatives);
}