#include <stdio.h>

#include "console.h"

void println(char *format, const char *arguments, ...) {
    printf("-> ");
    printf(format, arguments);
    printf("\n");
}