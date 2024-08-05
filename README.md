# Clang libTooling example
* required clang version: clang 20.0.0git

## How to
### build
```bash
mkdir build
cd build
cmake .. -G Ninja
ninja

cd ../target
mkdir build
cd build
cmake .. -G Ninja
ninja
```

### execute
```bash
../../build/ast ../main.cpp
```

expected result
```
warning: argument unused during compilation: '-c' [-Wunused-command-line-argument]
In file included from /mnt/c/Jeonghyun/coding/ast/target/main.cpp:1:
In file included from /usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iostream:39:
In file included from /usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ostream:38:
In file included from /usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ios:38:
In file included from /usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iosfwd:40:
In file included from /usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/postypes.h:40:
In file included from /usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwchar:44:
/usr/include/wchar.h:35:10: fatal error: 'stddef.h' file not found
   35 | #include <stddef.h>
      |          ^~~~~~~~~~
__throw_domain_error
/usr/include/c++/11/bits/functexcept.h
__remaining
/usr/include/time.h
argument_out_of_domain
/usr/include/x86_64-linux-gnu/c++/11/bits/error_constants.h
domain_error
/usr/include/c++/11/stdexcept
domain_error
/usr/include/c++/11/stdexcept
domain_error
/usr/include/c++/11/stdexcept
domain_error
/usr/include/c++/11/stdexcept
domain_error
/usr/include/c++/11/stdexcept
~domain_error
/usr/include/c++/11/stdexcept
__remaining
/usr/include/c++/11/bits/streambuf.tcc
__remaining
/usr/include/c++/11/bits/streambuf.tcc
main
/mnt/c/Jeonghyun/coding/ast/target/main.cpp
1 error generated.
Error while processing /mnt/c/Jeonghyun/coding/ast/target/build/../main.cpp.
```