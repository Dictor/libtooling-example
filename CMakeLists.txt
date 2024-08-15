cmake_minimum_required(VERSION 3.28)

project(ast)

IF (WIN32)
	# C++17
	set(CMAKE_CXX_STANDARD 17) 

	# explicitly set Clang directories
	set(Clang_DIR "C:/Program Files (x86)/LLVM/lib/cmake/clang")
ENDIF()

find_package(LLVM  REQUIRED CONFIG)
find_package(Clang REQUIRED CONFIG)

# need to check about is LLVM compiled with RTTI option
add_compile_options(-fno-rtti)
add_executable(${PROJECT_NAME} ast.cpp)

IF (WIN32)
	# Allow users to specify the base path for LLVM/Clang installation
	set(LLVM_CLANG_BASE_DIR "D:/llvm" CACHE PATH "Base directory for LLVM/Clang installation")	

	# explicitly set include path
	include_directories("${LLVM_CLANG_BASE_DIR}/llvm-project/clang/include")
	include_directories("${LLVM_CLANG_BASE_DIR}/llvm-project/llvm/include")
	include_directories("${LLVM_CLANG_BASE_DIR}/build/include")
	include_directories("${LLVM_CLANG_BASE_DIR}/build/tools/clang/include")
ENDIF()

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