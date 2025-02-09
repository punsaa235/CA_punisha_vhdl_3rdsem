#include <stdio.h>

int main() {
    int n1, n2;
    printf("Enter two binary numbers: ");
    scanf("%d %d", &n1, &n2);

    int res = 0, m = 1, shift = 0;
    int i;

    while (n2 > 0) {
        int d2 = n2 % 10;

        if (d2 == 1) {
            int temp = n1;
            int shifted_n1 = n1;

            for (i = 0; i < shift; i++) {
                shifted_n1 *= 10;
            }

            res += shifted_n1;
        }

        n2 = n2 / 10;
        shift++;
    }

    printf("Product: %d\n", res);
    return 0;
}
