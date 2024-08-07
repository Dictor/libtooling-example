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
```reference AST
clang-check ../main.cpp --ast-dump | grep -A 30 "forTestFunc2"
```

```bash
../../build/ast ../main.cpp
```

expected output
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
< function forTestFunc1 >
    children ForStmt
      children DeclStmt
        children IntegerLiteral
    (null stmt)
      children BinaryOperator
        children ImplicitCastExpr
          children DeclRefExpr
        children IntegerLiteral
      children UnaryOperator
        children DeclRefExpr
      children CompoundStmt
        children GCCAsmStmt
  score: 1
  kind: Var
< function forTestFunc2 >
    children ForStmt
      children DeclStmt
        children IntegerLiteral
    (null stmt)
      children BinaryOperator
        children ImplicitCastExpr
          children DeclRefExpr
        children IntegerLiteral
      children UnaryOperator
        children DeclRefExpr
      children CompoundStmt
        children ForStmt
          children DeclStmt
            children IntegerLiteral
        (null stmt)
          children BinaryOperator
            children ImplicitCastExpr
              children DeclRefExpr
            children IntegerLiteral
          children UnaryOperator
            children DeclRefExpr
          children CompoundStmt
            children GCCAsmStmt
  score: 101
  kind: Var
  kind: Var
<named main >
/mnt/c/Jeonghyun/coding/ast/target/main.cpp
1 error generated.
Error while processing /mnt/c/Jeonghyun/coding/ast/target/build/../main.cpp.
```