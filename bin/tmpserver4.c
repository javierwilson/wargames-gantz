#include <stdio.h>
int main(int argc, char **argv) {
  setresuid(2005, 2005, 2005);
  execv("/wargame/bin/tmpserver4.sh", argv);
}
