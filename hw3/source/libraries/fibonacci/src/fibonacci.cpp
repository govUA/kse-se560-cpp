#include "fibonacci.hpp"

int fibonacci_recursive(const int value) {
    if (value <= 1) return value;
    return fibonacci_recursive(value - 1) + fibonacci_recursive(value - 2);
}

int fibonacci_iterative(const int value) {
    if (value <= 1) return value;
    int first = 0, second = 1, current = 0;
    for (int i = 2; i <= value; i++) {
        current = first + second;
        first = second;
        second = current;
    }
    return current;
}