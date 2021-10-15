#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct hability {

    int num;
    struct hability *next;
    struct hability *first;
};
struct card {
    char *name;
    int total_habilities;

    char *next_name;
    int position;

    struct hability *habilities;
    struct card *next;
};
void push_habilities(struct hability *list, int num);
void print_list(struct hability *list);
void push_card(struct card *cards, char *name, char *next_name, struct hability *list, int total_habilities);
void sort_list(struct card *card);
void sort(char *array[], int quantity);
int find_position(char *names[], char *name, int cards_quantity);
int get_position_list(struct hability *habilities, int position);
void find_print(struct card *cards, int cards_quantity, char *ordered[], char *name, char *started, int time_flow);

int main(void)
{

    struct card *cards = (struct card *)malloc(sizeof(struct card));

    cards->next = NULL;

    int total_cards = 0;

    scanf("%d", &total_cards);

    char *all_names[total_cards];

    for (int i = 0; i < total_cards; i++) {
	char name[50];
	char next_name[50];
	int total_habilities = 0;

	scanf(" %[^\n]\n%d", name, &total_habilities);
	struct hability *habilities = (struct hability *)malloc(sizeof(struct hability));

	habilities->next = NULL;
	habilities->first = NULL;

	all_names[i] = malloc(strlen(name)+1);
	strcpy(all_names[i], name);
	for (int j = 0; j < total_habilities; j++) {
	    int hability_code = 0;

	    scanf("%d", &hability_code);
	    push_habilities(habilities, hability_code);
	}

	scanf(" %[^\n]", next_name);
	push_card(cards, name, next_name, habilities, total_habilities);
    }
    sort(all_names, total_cards);
    char start[50];

    scanf(" %[^\n]", start);
    find_print(cards, total_cards, all_names, start, start, 0);
}

void push_habilities(struct hability *list, int num)
{
    struct hability *n = list;
    int total = 0;

    while (n->next != NULL) {
	n = n->next;
	total++;
    }
    n->next = (struct hability *)malloc(sizeof(struct hability));
    n->next->num = num;
    n->next->next = NULL;
    if (total == 0) {
	list->first = n->next;
    }
}

void push_card(struct card *cards, char *name, char *next_name, struct hability *list, int total_habilities)
{
    struct card *n = cards;
    int position = 0;

    while (n->next != NULL) {
	position++;
	n = n->next;
    }
    n->next = (struct card *)malloc(sizeof(struct card));
    n->next->habilities = list;
    n->next->name = malloc(strlen(name)+1);
    strcpy(n->next->name, name);
    n->next->next_name = malloc(strlen(next_name)+1);
    strcpy(n->next->next_name, next_name);
    n->next->total_habilities = total_habilities;
    n->next->position = position;
    n->next->next = NULL;
}
void print_list(struct hability *list)
{
    struct hability *n = list;

    printf("\n");
    while (n->next != NULL) {
	printf("%d", n->next->num);

	if (n->next->next != NULL) {
	  printf(" ");
	}
	n = n->next;
    }
}
void sort_list(struct card *card)
{
    struct card *n = card;

    printf("Lista atual:\n");
    while (n->next != NULL) {
    printf("%s - %s - %d\n", n->next->name, n->next->next_name, n->next->position);
	n = n->next;
    }
}

void sort(char *array[], int quantity)
{

    for (int i = 0; i < quantity; i++) {
      for (int j = i+1; j < quantity; j++)
	 if (strcmp(array[i], array[j]) > 0) {
	    char *temp = array[i];

	    array[i] = array[j];
	    array[j] = temp;
	 }
     }
}
int find_position(char *names[], char *name, int cards_quantity)
{
    int position = -1;

    for (int i = 0; i < cards_quantity; i++) {
	if (!strcmp(names[i], name)) {
	    position = i;
	    break;
	}
    }
    return position;
}
int get_position_list(struct hability *habilities, int position)
{
    struct hability *n = habilities;
    int count = 0;
    int hability = 0;

    while (n->next != NULL) {
	if (count == position) {
	    hability = n->next->num;
	    break;
	}
	n = n->next;
	count++;
    }
    return hability;
}
void find_print(struct card *cards, int cards_quantity, char *ordered[], char *name, char *started, int time_flow)
{
    if (!strcmp(name, started) && time_flow > 0) {
    free(cards);
	return;
    }
    struct card *n = cards;

    while (n->next != NULL) {
	if (!strcmp(n->next->name, name)) {
	    int position = find_position(ordered, name, cards_quantity);
	    int needToPercorred = time_flow % n->next->total_habilities;
	    int hability = get_position_list(n->next->habilities, needToPercorred);

	    printf("%d\n%d\n", position, hability);

	    find_print(cards, cards_quantity, ordered, n->next->next_name, started, time_flow + 1);
	}
	n = n->next;
    }
}
