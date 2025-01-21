#include <string>
#include <iostream>
#include <vector>
#include <fmt/core.h>
#define YELLOW "\033[33m" /* Yellow */

using namespace std;

int fibonacci(int n) {
    if (n <= 1)
        return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
}

int random(int start,int end){
    srand(time(0));
    return start + (rand() % (end - start)) ;
}

void calculate(int start,int end){
    int num = random(start, end);
    int fibo = fibonacci(num);
    fmt::print(fmt::format(YELLOW"Calculate fibo number f({}) : {} ",num,fibo));
}