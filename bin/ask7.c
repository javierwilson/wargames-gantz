#define _GNU_SOURCE
#include <stdio.h>
#include <unistd.h>
#include <string.h>
int main(int argc, char **argv) {

    char str[5];

    printf("Enter 4-digit PIN: ");
    fgets(str, sizeof(str), stdin);

    if (strcmp(str, "6666") == 0) {
        setresuid(2008, 2008, 2008);
        execv("/bin/sh", argv);
    }
    return 0;
}
