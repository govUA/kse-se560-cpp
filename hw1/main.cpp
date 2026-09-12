#include <print>

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

int main(int argc, char **argv) {
    std::print(" {} \n", fibonacci_recursive(2));
    std::print(" {} \n", fibonacci_recursive(10));

    std::print(" {} \n", fibonacci_iterative(2));
    std::print(" {} \n", fibonacci_iterative(10));

    return 0;
}
