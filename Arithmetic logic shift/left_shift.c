#include <stdio.h>

int main() {
    int num, shift;
    printf("Enter a number and shift amount: ");
    scanf("%d %d", &num, &shift);

    int result = num << shift;
    printf("Left Shift Result: %d\n", result);

    return 0;
}
