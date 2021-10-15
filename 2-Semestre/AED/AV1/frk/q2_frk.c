#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct list {
	int num;
	struct list *next;
};
struct pile {

	struct list *list;
	struct pile *next;
};

void push_to_list(struct list *list, int num);
void print_list(struct list *list);
void push_to_pile(struct pile *pile, struct list *list);
int main(void)
{

	struct pile *pile = (struct pile *)malloc(sizeof(struct pile));

	pile->list = NULL;
	pile->next = NULL;

	char func[4];

	while (scanf("%s", &func) != EOF) {

		if (!strcmp(func, "PUSH")) {
			struct list *list = (struct list *)malloc(sizeof(struct list));

			list->next = NULL;

			int stop_condition = 1;
			char num01;
			char num02[100];
			int i = 0;

			while (stop_condition) {
				scanf("%c", &num01);

				if (num01 == '\n' && i == 1) {
					stop_condition = 0;
				} else {
					scanf("%s", num02);
					int num = atoi(num02);

					push_to_list(list, num);
				}
				i = 1;
			}
			push_to_pile(pile, list);
		} else if (!strcmp(func, "POP")) {
			pop(pile);
		}
	}
	free(pile);
	return 0;
}

void push_to_list(struct list *list, int num)
{
	struct list *n = list;

	while (n->next != NULL) {
		n = n->next;
	}
	n->next = (struct list *)malloc(sizeof(struct list));
	n->next->num = num;
	n->next->next = NULL;
}

void print_list(struct list *list)
{
	struct list *n = list;

	printf("\n");
	while (n->next != NULL) {
		printf("%d", n->next->num);

		if (n->next->next != NULL) {
			printf(" ");
		}
		n = n->next;
	}
}

void push_to_pile(struct pile *pile, struct list *list)
{

	struct pile *newPile = (struct pile *)malloc(sizeof(struct pile));

	newPile->list = list;

	if (pile->next == NULL) {
		newPile->next = NULL;
	} else {
		newPile->next = pile->next;
	}

	pile->next = newPile;
}

void pop(struct pile *pile)
{
	struct pile *n = pile;

	if (n->next != NULL) {
		struct pile *nodeToRemove = pile->next;

		pile->next = nodeToRemove->next;
		print_list(nodeToRemove->list);
		free(nodeToRemove);
	} else {
		printf("\n");
		printf("EMPTY STACK");
	}
}
