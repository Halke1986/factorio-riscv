#include <stdarg.h>
#include <stdio.h>

#include "printf.h"

int ee_printf(const char *fmt, ...)
{
    va_list args;
    va_start(args, fmt);
    vprintf_(fmt, args);
    va_end(args);
}

#undef printf

void _putchar(char character)
{
    printf("%c", character);
}