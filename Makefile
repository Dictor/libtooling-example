# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Jeonghyun/coding/ast

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Jeonghyun/coding/ast

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "No interactive CMake dialog available..."
	/usr/local/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	/usr/local/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /mnt/c/Jeonghyun/coding/ast/CMakeFiles /mnt/c/Jeonghyun/coding/ast//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /mnt/c/Jeonghyun/coding/ast/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named intrinsics_gen

# Build rule for target.
intrinsics_gen: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 intrinsics_gen
.PHONY : intrinsics_gen

# fast build rule for target.
intrinsics_gen/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/intrinsics_gen.dir/build.make CMakeFiles/intrinsics_gen.dir/build
.PHONY : intrinsics_gen/fast

#=============================================================================
# Target rules for targets named omp_gen

# Build rule for target.
omp_gen: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 omp_gen
.PHONY : omp_gen

# fast build rule for target.
omp_gen/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/omp_gen.dir/build.make CMakeFiles/omp_gen.dir/build
.PHONY : omp_gen/fast

#=============================================================================
# Target rules for targets named acc_gen

# Build rule for target.
acc_gen: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 acc_gen
.PHONY : acc_gen

# fast build rule for target.
acc_gen/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/acc_gen.dir/build.make CMakeFiles/acc_gen.dir/build
.PHONY : acc_gen/fast

#=============================================================================
# Target rules for targets named ARMTargetParserTableGen

# Build rule for target.
ARMTargetParserTableGen: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ARMTargetParserTableGen
.PHONY : ARMTargetParserTableGen

# fast build rule for target.
ARMTargetParserTableGen/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ARMTargetParserTableGen.dir/build.make CMakeFiles/ARMTargetParserTableGen.dir/build
.PHONY : ARMTargetParserTableGen/fast

#=============================================================================
# Target rules for targets named AArch64TargetParserTableGen

# Build rule for target.
AArch64TargetParserTableGen: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 AArch64TargetParserTableGen
.PHONY : AArch64TargetParserTableGen

# fast build rule for target.
AArch64TargetParserTableGen/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/AArch64TargetParserTableGen.dir/build.make CMakeFiles/AArch64TargetParserTableGen.dir/build
.PHONY : AArch64TargetParserTableGen/fast

#=============================================================================
# Target rules for targets named RISCVTargetParserTableGen

# Build rule for target.
RISCVTargetParserTableGen: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 RISCVTargetParserTableGen
.PHONY : RISCVTargetParserTableGen

# fast build rule for target.
RISCVTargetParserTableGen/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/RISCVTargetParserTableGen.dir/build.make CMakeFiles/RISCVTargetParserTableGen.dir/build
.PHONY : RISCVTargetParserTableGen/fast

#=============================================================================
# Target rules for targets named clang-tablegen-targets

# Build rule for target.
clang-tablegen-targets: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clang-tablegen-targets
.PHONY : clang-tablegen-targets

# fast build rule for target.
clang-tablegen-targets/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/clang-tablegen-targets.dir/build.make CMakeFiles/clang-tablegen-targets.dir/build
.PHONY : clang-tablegen-targets/fast

#=============================================================================
# Target rules for targets named ast

# Build rule for target.
ast: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ast
.PHONY : ast

# fast build rule for target.
ast/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ast.dir/build.make CMakeFiles/ast.dir/build
.PHONY : ast/fast

ast.o: ast.cpp.o
.PHONY : ast.o

# target to build an object file
ast.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ast.dir/build.make CMakeFiles/ast.dir/ast.cpp.o
.PHONY : ast.cpp.o

ast.i: ast.cpp.i
.PHONY : ast.i

# target to preprocess a source file
ast.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ast.dir/build.make CMakeFiles/ast.dir/ast.cpp.i
.PHONY : ast.cpp.i

ast.s: ast.cpp.s
.PHONY : ast.s

# target to generate assembly for a file
ast.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ast.dir/build.make CMakeFiles/ast.dir/ast.cpp.s
.PHONY : ast.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... AArch64TargetParserTableGen"
	@echo "... ARMTargetParserTableGen"
	@echo "... RISCVTargetParserTableGen"
	@echo "... acc_gen"
	@echo "... clang-tablegen-targets"
	@echo "... intrinsics_gen"
	@echo "... omp_gen"
	@echo "... ast"
	@echo "... ast.o"
	@echo "... ast.i"
	@echo "... ast.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

