// SPDX-License-Identifier: GPL-2.0
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	int i, *vetor = malloc(10 * sizeof(int));

	for (i = 0; i < 10; i++)
		scanf("%d", &vetor[i]);
	for (i = 9; i >= 0; i--)
		printf("%d\n", vetor[i]);

	free(vetor);
	return 0;
}
