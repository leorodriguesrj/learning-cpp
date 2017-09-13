#include <stdio.h>
#include <string>
#include <vector>

void someFunc(char *input[]) {
    printf("%s\n", input[0]);
}

int main(int argc, char **argv) {
    std::string msg = "some simple text";
    std::vector<char> msgChars(msg.begin(), msg.end());
    msgChars.push_back('\0');
    char *msgPointer = &msgChars[0];
    char *pointers[] = { msgPointer };
    someFunc(pointers);
    return 0;
}
