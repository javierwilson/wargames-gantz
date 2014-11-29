#include <stdio.h>
int main(int argc, char **argv) {
  setresuid(2003, 2003, 2003);
  execv("/wargame/bin/tmpserver2.sh", argv);
}
