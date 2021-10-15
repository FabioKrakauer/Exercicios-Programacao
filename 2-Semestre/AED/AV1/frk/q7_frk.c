#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct pile {
    char character;
    struct pile *next;
};
void push(struct pile *pile, char character);
void pop(struct pile *pile);
void print_pile(struct pile *pile);
int is_open_exp(char character);
char get_last_char(struct pile *pile);
char get_equivalent(char character);
char is_valid(char c);
int main(void)
{


    int expressions = 0;

    scanf("%d", &expressions);
    for (int i = 0; i < expressions; i++) {
	char character[10001];
	int error = 0;
	int count = 0;

	scanf("%s", &character);
	struct pile *pile = (struct pile *)malloc(sizeof(struct pile));

	pile->next = NULL;
	while (character[count] != NULL) {
	    char current = character[count];

	    if (is_open_exp(current)) {
		if (is_valid(current)) {
		    push(pile, current);
		}
	    } else {
		char lastChar = get_last_char(pile);

		if (lastChar != NULL) {
		    char needToBe = get_equivalent(lastChar);

		    if (current == needToBe) {
			pop(pile);
		    } else {
			error = 1;
		    }
		} else {
		    if (is_valid(current)) {
			error = 1;
		    }
		}
	    }
	    count++;
	}
	if (error == 0) {
	    if (pile->next == NULL) {
		printf("S\n");
	    } else {
		printf("N\n");
	    }
	} else {
	    printf("N\n");
	}
	free(pile);
    }
    return 0;
}

void push(struct pile *pile, char character)
{
    struct pile *new = (struct pile *)malloc(sizeof(struct pile));

    new->character = character;
    new->next = pile->next;
    pile->next = new;
}

void pop(struct pile *pile)
{
    struct pile *nodeToRemove = pile->next;

    pile->next = nodeToRemove->next;
    free(nodeToRemove);
}

void print_pile(struct pile *pile)
{
    struct pile *n = pile;

    while (n->next != NULL) {
	printf("%c ", n->next->character);
	n = n->next;
    }
}
int is_open_exp(char character)
{
    if (character == '(' || character == '[' || character == '{') {
	return 1;
    } else {
	return 0;
    }
}
char get_last_char(struct pile *pile)
{
    if (pile->next == NULL) {
	return NULL;
    }
    return pile->next->character;
}
char get_equivalent(char character)
{
    if (character == '(') {
	return ')';
    }
    if (character == ')') {
	return '(';
    }
    if (character == '{') {
	return '}';
    }
    if (character == '}') {
	return '{';
    }
    if (character == '[') {
	return ']';
    }
    if (character == ']') {
	return '[';
    }
}
char is_valid(char c)
{
    if (c == '(' || c == ')' || c == '[' || c == ']' || c == '{' || c == '}') {
	return 1;
    }
    return 0;
}
