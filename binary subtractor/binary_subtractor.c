#include <stdio.h>

int main() {
    int a, b;
    printf("Enter two binary numbers: ");
    scanf("%d %d", &a, &b);

    int diff = 0, borrow = 0, place = 1;

    while (a > 0 || b > 0) {
        int bit1 = a % 10;
        int bit2 = b % 10;

        bit1 -= borrow;

        if (bit1 < bit2) {
            bit1 += 2;
            borrow = 1;
        } else {
            borrow = 0;
        }

        diff += (bit1 - bit2) * place;
        place *= 10;
        a /= 10;
        b /= 10;
    }

    printf("Difference: %d\n", diff);
    return 0;
}
