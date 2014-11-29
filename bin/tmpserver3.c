#include <stdio.h>
int main(int argc, char **argv) {
  setresuid(2004, 2004, 2004);
  execv("/wargame/bin/tmpserver3.sh", argv);
}
