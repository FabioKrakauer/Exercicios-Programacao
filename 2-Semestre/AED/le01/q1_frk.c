#include <stdio.h>

const int TEACHERS = 7;
const int COFFEE_PER_CAPSULE = 2;

const CAPSULE_PER_SMALL_CASE = 10;
const CAPSULE_PER_BIG_CASE = 16;
int main() {
    
    int total_capsule = 0;
    int i = 0;
    for (int i = 0; i < 7; i++){
        int donation_cases = 1;
        scanf("%d", &donation_cases);
        char case_size;
        char space[2];
        scanf("%c%c", &space, &case_size);
        if(case_size == 'p' || case_size == 'P') {
            total_capsule += donation_cases * CAPSULE_PER_SMALL_CASE;
        } else if(case_size == 'g' || case_size == 'G') {
            total_capsule += donation_cases * CAPSULE_PER_BIG_CASE;
        }
    }
    int capsule_teacher = total_capsule * COFFEE_PER_CAPSULE / TEACHERS;
    printf("%d\n", total_capsule);
    printf("%d", capsule_teacher);
    return 0;
}