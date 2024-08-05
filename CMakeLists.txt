cmake_minimum_required(VERSION 3.28)

project(ast)

find_package(LLVM  REQUIRED CONFIG)
find_package(Clang REQUIRED CONFIG)

# need to check about is LLVM compiled with RTTI option
add_compile_options(-fno-rtti)
add_executable(${PROJECT_NAME} ast.cpp)

target_link_libraries(${PROJECT_NAME}
  PRIVATE
  clangBasic
  clangAST
  clangLex
  clangParse
  clangSema
  clangAnalysis
  clangEdit
  clangASTMatchers
  clangRewrite
  clangTooling
  clangFrontend
  clangDriver
  clangSerialization
  )