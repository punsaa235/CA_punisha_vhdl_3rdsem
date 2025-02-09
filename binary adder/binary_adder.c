#include <stdio.h>

int main() {
    int a, b;
    printf("Enter two binary numbers: ");
    scanf("%d %d", &a, &b);

    int sum = 0, carry = 0, place = 1;

    while (a > 0 || b > 0 || carry > 0) {
        int bit1 = a % 10;
        int bit2 = b % 10;
        int total = bit1 + bit2 + carry;

        sum += (total % 2) * place;
        carry = total / 2;
        place *= 10;
        a /= 10;
        b /= 10;
    }

    printf("Sum: %d\n", sum);
    return 0;
}
