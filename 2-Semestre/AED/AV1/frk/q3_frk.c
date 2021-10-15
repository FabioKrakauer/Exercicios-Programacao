#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int product(int x, int y);
int main(void)
{
	int ropes = 0, coins = 0, price = 0;

	while (scanf("%d%d%d", &ropes, &coins, &price) != EOF) {
		int fullPrice = product(ropes, price);
		if (coins >= fullPrice) {
			printf("Sim\n");
		} else {
			printf("Nao\n");
		}
	}
}

int product(int x, int y)
{
	if (x < y) {
		return product(y, x);
	} else if (y != 0) {
		return x + product(x, y - 1);
	}
    return 0;
}