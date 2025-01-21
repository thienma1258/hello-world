#include <fmt/core.h>
#include "hello.h"
#include <string>

using namespace std;

#define RED "\033[31m"    /* Red */
#define BLUE "\033[34m"   /* Blue */

void hello()
{
    fmt::print(RED "Hello everyone this is Dong Pham!\n");
}
