#include <stdio.h>
int main(int argc, char **argv) {
  setresuid(2002, 2002, 2002);
  execv("/wargame/bin/tmpserver1.sh", argv);
}
