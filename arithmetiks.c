#include <stdio.h>
#include "ganitham.h"

int main(void) {
    double sum=add(3,4);
    double difference=subtract(3,4);
    double product=multiply(3,4);
    double ratio=divide(3,4);
    printf("the sum is: %lf", sum);
    printf("\nthe difference is: %lf", difference);
    printf("\nthe product is: %lf", product);
    printf("\nthe ratio is: %lf", ratio);
    return 0;
}
