#include <stdio.h>

int main()
{

    int ballots[6] = {100, 50, 20, 10, 5, 2};
    double cents[6] = {1, 0.50, 0.25, 0.10, 0.05, 0.01};
    float value = 0.01;
    scanf("%f", &value);
    int real_value = value * 100;

    int hasOne = 0;
    for(int i = 0; i < 6; i++) {
        int ballot = ballots[i];
        if(real_value >= (ballot * 100)) {
            int ballot_quant = real_value / (ballot * 100);
            if(hasOne == 1) {
                printf("\n%d nota(s) de R$ %d.00", ballot_quant, ballot);
            }else {
                printf("%d nota(s) de R$ %d.00", ballot_quant, ballot);
            }
            hasOne = 1;
            real_value = real_value % (ballot * 100);
        }
    }
    for(int i = 0; i < 6; i++) {
        double coin = cents[i];
        int coin_int = coin * 100;
        if(real_value >= coin_int) {
            int coin_quant = real_value / coin_int;
            if(hasOne == 1) {
                printf("\n%d moeda(s) de R$ %.2f", coin_quant, coin);
            }else {
                printf("%d moeda(s) de R$ %.2f", coin_quant, coin);
            }
            hasOne = 1;
            real_value = real_value % coin_int;
        }
    }
    return 0;
}