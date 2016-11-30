#define _GNU_SOURCE
#include <stdio.h>
#include <unistd.h>
#include <string.h>
int main(int argc, char **argv) {

    if (strcmp(argv[1], "1234") == 0) {
        char *argv[] = {"/bin/sh"};
        setresuid(2007, 2007, 2007);
        execv("/bin/sh", argv);
    }
    return 0;
}
