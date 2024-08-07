#include "clang/AST/AST.h"

#include <cmath>
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

int RecursiveStmtComplexityScore(Stmt *stmt, int exponential_offset = 0) {
  int ret = 0;
  for (const auto s : stmt->children()) {
    if (s == nullptr) {
      llvm::outs() << std::string(2 + 2 * exponential_offset, ' ')
                   << "(null stmt)\n";
      continue;
    }

    auto name_charptr = s->getStmtClassName();
    auto name = std::make_unique<std::string>(name_charptr);

    if (name_charptr != nullptr) {
      name.reset(new std::string(name_charptr));
    }

    llvm::outs() << std::string(2 + 2 * exponential_offset, ' ')
                 << "  children " << *name.get() << "\n";
    if (name.get()->compare("ForStmt") == 0) {
      ret += pow(10, exponential_offset);
    }

    ret += RecursiveStmtComplexityScore(s, exponential_offset + 1);
  }

  return ret;
}

class MyASTVisitor : public RecursiveASTVisitor<MyASTVisitor> {
 public:
  explicit MyASTVisitor(ASTContext *Context) : context_(Context) {}

  bool VisitFunctionDecl(FunctionDecl *Decl) {
    auto func_name = Decl->getDeclName().getAsString();
    if (func_name.find("forTestFunc") != std::string::npos) {
      llvm::outs() << "< function " << func_name << " >\n";
      if (Decl->hasBody()) {
        auto score = RecursiveStmtComplexityScore(Decl->getBody());
        llvm::outs() << "  score: " << score << "\n";
      }

      for (auto stmt : Decl->decls()) {
        auto kind = std::string(stmt->getDeclKindName());
        llvm::outs() << "  kind: " << kind << "\n";
      }
    }
    return true;
  }

  bool VisitNamedDecl(NamedDecl *Declaration) {
    auto name = std::string(Declaration->getDeclName().getAsString());
    if (name == "main") {
      llvm::outs() << "<named " << name << " >\n";

      FullSourceLoc FullLocation =
          context_->getFullLoc(Declaration->getBeginLoc());
      if (FullLocation.isValid()) {
        llvm::outs() << FullLocation.getFileEntry()->tryGetRealPathName()
                     << "\n";
      }
    }

    return true;
  }

 private:
  ASTContext *context_;
};

class MyASTConsumer : public clang::ASTConsumer {
 public:
  explicit MyASTConsumer(ASTContext *Context) : visitor_(Context) {}

  virtual void HandleTranslationUnit(clang::ASTContext &Context) {
    visitor_.TraverseDecl(Context.getTranslationUnitDecl());
  }

 private:
  MyASTVisitor visitor_;
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