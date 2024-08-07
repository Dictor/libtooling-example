#include <iostream>

using namespace std;

void forTestFunc1() {
  for (int i = 0; i < 100; i++) {
    asm("nop");
  }
}

void forTestFunc2() {
  for (int i = 0; i < 100; i++) {
    for (int j = 0; j < 100; j++) {
      asm("nop");
    }
  }
}


int main() {
  std::cout << "hello world" << std::endl;
  forTestFunc1();
  forTestFunc2();
  return 0;
}

