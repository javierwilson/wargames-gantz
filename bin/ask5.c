#define _GNU_SOURCE
#include <stdio.h>
#include <unistd.h>
#include <string.h>
int main(int argc, char **argv) {

    char str[7];

    printf("Enter password: ");
    fgets(str, sizeof(str), stdin);

    if (strcmp(str, "secret") == 0) {
        setresuid(2006, 2006, 2006);
        execv("/bin/sh", argv);
    }
    return 0;
}
