#include "clang/AST/AST.h"

#include <iostream>
#include <memory>
#include <vector>

#include "clang/AST/ASTConsumer.h"
#include "clang/AST/RecursiveASTVisitor.h"
#include "clang/Frontend/CompilerInstance.h"
#include "clang/Frontend/FrontendAction.h"
#include "clang/Tooling/CommonOptionsParser.h"
#include "clang/Tooling/Tooling.h"
#include "llvm/Support/CommandLine.h"

using namespace clang;
using namespace clang::tooling;

static llvm::cl::OptionCategory MyToolCategory("my-tool options");

class MyASTVisitor : public RecursiveASTVisitor<MyASTVisitor> {
 public:
  explicit MyASTVisitor(ASTContext *Context) : Context(Context) {}

  bool VisitNamedDecl(NamedDecl *Declaration) {
    auto name = std::string(Declaration->getDeclName().getAsString());
    if (name.find(std::string("main")) != std::string::npos) {
      llvm::outs() << name << "\n";

      FullSourceLoc FullLocation =
          Context->getFullLoc(Declaration->getBeginLoc());
      if (FullLocation.isValid()) {
        llvm::outs() << FullLocation.getFileEntry()->tryGetRealPathName() << "\n";
      }
    }

    return true;
  }

 private:
  ASTContext *Context;
};

class MyASTConsumer : public clang::ASTConsumer {
 public:
  explicit MyASTConsumer(ASTContext *Context) : Visitor(Context) {}

  virtual void HandleTranslationUnit(clang::ASTContext &Context) {
    Visitor.TraverseDecl(Context.getTranslationUnitDecl());
  }

 private:
  MyASTVisitor Visitor;
};

class MyASTFrontendAction : public clang::ASTFrontendAction {
 public:
  virtual std::unique_ptr<clang::ASTConsumer> CreateASTConsumer(
      clang::CompilerInstance &Compiler, llvm::StringRef InFile) {
    return std::make_unique<MyASTConsumer>(&Compiler.getASTContext());
  }
};

int main(int argc, const char **argv) {
  /*
  if (argc > 1) {
    clang::tooling::runToolOnCode(std::make_unique<MyASTFrontendAction>(),
  argv[1]);
  }
  */

  auto ExpectedParser = CommonOptionsParser::create(argc, argv, MyToolCategory);
  if (!ExpectedParser) {
    llvm::errs() << ExpectedParser.takeError();
    return 1;
  }
  CommonOptionsParser &OptionsParser = ExpectedParser.get();

  ClangTool tool(OptionsParser.getCompilations(),
                 OptionsParser.getSourcePathList());

  MyASTFrontendAction action;
  tool.run(newFrontendActionFactory<MyASTFrontendAction>().get());

  return 0;
}