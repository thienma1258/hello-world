#include "hello.h"
#include "utils.h"
#include <fmt/core.h>

string getCompilerVersoin();

void logInfo()
{
    string compilerVersion = getCompilerVersoin();
    fmt::print(fmt::format("Compiler version {} os  \n ", compilerVersion));
}

int main()
{
    hello();
    logInfo();
    calculate(0, 20);
    return 0;
}

string getCompilerVersoin()
{
    if (__cplusplus == 202101L)
        return "C++23";
    else if (__cplusplus == 202002L)
        return "C++20";
    else if (__cplusplus == 201703L)
        return "C++17";
    else if (__cplusplus == 201402L)
        return "C++14";
    else if (__cplusplus == 201103L)
        return "C++11";
    else if (__cplusplus == 199711L)
        return "C++98";
    return "pre-standard C++.";
}