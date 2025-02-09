#include <stdio.h>
#include <math.h>

int binary_to_decimal(int n) {
    int decimal = 0, i = 0, remainder;
    while (n != 0) {
        remainder = n % 10;
        decimal += remainder * pow(2, i);
        n /= 10;
        i++;
    }
    return decimal;
}

int decimal_to_binary(int n) {
    int binary = 0, remainder, i = 1;
    while (n != 0) {
        remainder = n % 2;
        binary += remainder * i;
        n /= 2;
        i *= 10;
    }
    return binary;
}

int main() {
    int n1, n2;
    printf("Enter two binary numbers: ");
    scanf("%d %d", &n1, &n2);

    int decimal_n1 = binary_to_decimal(n1); 
    int decimal_n2 = binary_to_decimal(n2); 

    int quotient = decimal_n1 / decimal_n2;   
    int remainder = decimal_n1 % decimal_n2; 

    printf("Quotient in binary: %d\n", decimal_to_binary(quotient)); 
    printf("Remainder in binary: %d\n", decimal_to_binary(remainder)); 

    return 0;
}
