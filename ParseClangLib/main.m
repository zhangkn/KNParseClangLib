//
//  main.m
//  ParseClangLib
//
//  Created by Monkey on 15/9/14.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <dlfcn.h>
#import "Index.h"

//#define FILENAME "/Users/dodo/Documents/macos开发学习/OC/test/test/ViewController.m"
#define FILENAME "/Users/devzkn/code/github/KNcodeSnippets/KNcodeSnippets/KNNSFileManager.m"

//#define FILENAME "/Users/monkey/Documents/llvm/test/main.m"

CXIndex  (*myclang_createIndex)(int excludeDeclarationsFromPCH, int displayDiagnostics);
CXTranslationUnit (*myclang_parseTranslationUnit)(CXIndex CIdx,
                                                  const char *source_filename,
                                                  const char *const *command_line_args,
                                                  int num_command_line_args,
                                                  struct CXUnsavedFile *unsaved_files,
                                                  unsigned num_unsaved_files,
                                                  unsigned options);
CXCursor (*myclang_getTranslationUnitCursor)(CXTranslationUnit);
unsigned (*myclang_visitChildren)(CXCursor parent,
                                  CXCursorVisitor visitor,
                                  CXClientData client_data);
void (*myclang_disposeTranslationUnit)(CXTranslationUnit);
void (*myclang_disposeIndex)(CXIndex index);
CXSourceRange (*myclang_getCursorExtent)(CXCursor);
CXSourceLocation (*myclang_getRangeStart)(CXSourceRange range);
CXSourceLocation (*myclang_getRangeEnd)(CXSourceRange range);
void (*myclang_getInstantiationLocation)(CXSourceLocation location,
                                         CXFile *file,
                                         unsigned *line,
                                         unsigned *column,
                                         unsigned *offset);
void (*myclang_getExpansionLocation)(CXSourceLocation location,
                                CXFile *file,
                                unsigned *line,
                                unsigned *column,
                                unsigned *offset);
CXSourceLocation (*myclang_getCursorLocation)(CXCursor);
void (*myclang_getSpellingLocation)(CXSourceLocation location,
                               CXFile *file,
                               unsigned *line,
                               unsigned *column,
                               unsigned *offset);
CXString (*myclang_getFileName)(CXFile SFile);
const char *(*myclang_getCString)(CXString string);
CXString (*myclang_getCursorUSR)(CXCursor);
CXString (*myclang_getCursorDisplayName)(CXCursor);
void (*myclang_disposeString)(CXString string);
enum CXCursorKind (*myclang_getCursorKind)(CXCursor);
CXType (*myclang_getCursorType)(CXCursor C);
CXString (*myclang_getTypeSpelling)(CXType CT);
CXString (*myclang_getTypeKindSpelling)(enum CXTypeKind K);
enum CXLinkageKind (*myclang_getCursorLinkage)(CXCursor cursor);
CXCursor (*myclang_getCursorSemanticParent)(CXCursor cursor);
CXCursor (*myclang_getCursorLexicalParent)(CXCursor cursor);
unsigned (*myclang_isPreprocessing)(enum CXCursorKind);
CXString (*myclang_getCursorKindSpelling)(enum CXCursorKind Kind);
unsigned (*myclang_isStatement)(enum CXCursorKind);
unsigned (*myclang_isAttribute)(enum CXCursorKind);
unsigned (*myclang_isExpression)(enum CXCursorKind);
unsigned (*myclang_isTranslationUnit)(enum CXCursorKind);
unsigned (*myclang_isDeclaration)(enum CXCursorKind);
unsigned (*myclang_isReference)(enum CXCursorKind);
unsigned (*myclang_isInvalid)(enum CXCursorKind);
CXFile (*myclang_getIncludedFile)(CXCursor cursor);
CXString (*myclang_getTokenSpelling)(CXTranslationUnit, CXToken);
CXSourceRange (*myclang_getRange)(CXSourceLocation begin,
                             CXSourceLocation end);
void (*myclang_tokenize)(CXTranslationUnit TU, CXSourceRange Range,
                    CXToken **Tokens, unsigned *NumTokens);
CXString (*myclang_getCursorSpelling)(CXCursor);
unsigned (*myclang_defaultEditingTranslationUnitOptions)(void);
int (*myclang_saveTranslationUnit)(CXTranslationUnit TU,
                              const char *FileName,
                              unsigned options);

void initlibfunclist(void *handle){
    myclang_createIndex = dlsym(handle, "clang_createIndex");
    myclang_parseTranslationUnit = dlsym(handle, "clang_parseTranslationUnit");
    myclang_getTranslationUnitCursor = dlsym(handle, "clang_getTranslationUnitCursor");
    myclang_visitChildren = dlsym(handle, "clang_visitChildren");
    myclang_disposeTranslationUnit = dlsym(handle, "clang_disposeTranslationUnit");
    myclang_disposeIndex = dlsym(handle, "clang_disposeIndex");
    myclang_getCursorExtent = dlsym(handle, "clang_getCursorExtent");
    myclang_getRangeStart = dlsym(handle, "clang_getRangeStart");
    myclang_getRangeEnd = dlsym(handle, "clang_getRangeEnd");
    myclang_getInstantiationLocation = dlsym(handle, "clang_getInstantiationLocation");
    myclang_getExpansionLocation = dlsym(handle, "clang_getExpansionLocation");
    myclang_getCursorLocation = dlsym(handle, "clang_getCursorLocation");
    myclang_getSpellingLocation = dlsym(handle, "clang_getSpellingLocation");
    myclang_getFileName = dlsym(handle, "clang_getFileName");
    myclang_getCursorUSR = dlsym(handle, "clang_getCursorUSR");
    myclang_getCursorDisplayName = dlsym(handle, "clang_getCursorDisplayName");
    myclang_disposeString = dlsym(handle, "clang_disposeString");
    myclang_getCString = dlsym(handle, "clang_getCString");
    myclang_getCursorDisplayName = dlsym(handle, "clang_getCursorDisplayName");
    myclang_getCursorKind = dlsym(handle, "clang_getCursorKind");
    myclang_getCursorType = dlsym(handle, "clang_getCursorType");
    myclang_getTypeSpelling = dlsym(handle, "clang_getTypeSpelling");
    myclang_getTypeKindSpelling = dlsym(handle, "clang_getTypeKindSpelling");
    myclang_getCursorLinkage = dlsym(handle, "clang_getCursorLinkage");
    myclang_getCursorSemanticParent = dlsym(handle, "clang_getCursorSemanticParent");
    myclang_getCursorLexicalParent = dlsym(handle, "clang_getCursorLexicalParent");
    myclang_getCursorKindSpelling = dlsym(handle, "clang_getCursorKindSpelling");
    myclang_getIncludedFile = dlsym(handle, "clang_getIncludedFile");
    myclang_getCursorSpelling = dlsym(handle, "clang_getCursorSpelling");
    myclang_tokenize = dlsym(handle, "clang_tokenize");
    myclang_getTokenSpelling = dlsym(handle, "clang_getTokenSpelling");
    myclang_defaultEditingTranslationUnitOptions = dlsym(handle, "clang_defaultEditingTranslationUnitOptions");
    myclang_saveTranslationUnit = dlsym(handle, "clang_saveTranslationUnit");
}

CXTranslationUnit TU;

NSMutableArray *nameArr = nil;

BOOL varDel_isStatic(CXCursor cursor){
    CXSourceRange range = myclang_getCursorExtent(cursor);
    CXToken *tokens;
    unsigned int size;
    myclang_tokenize(TU,range,&tokens,&size);
    for (int i = 0; i < size; i++) {
        CXString cxtoken = myclang_getTokenSpelling(TU,tokens[i]);
        
        const char* ccxtoken = myclang_getCString(cxtoken);
        
        if(!strcmp(ccxtoken, "static")){
            CXString cxdisname =  myclang_getCursorDisplayName(cursor);
            const char* disname = myclang_getCString(cxdisname);
            NSLog(@"这个定义是static定义%s",disname);
            
            [nameArr addObject:[NSString stringWithUTF8String:disname]];
            
            return YES;
        }
        myclang_disposeString(cxtoken);
    }
    return NO;
}

void showString(int start, int end){
    
    
    NSString *conent = [[NSString alloc] initWithContentsOfFile:@FILENAME encoding:NSASCIIStringEncoding error:nil];
    NSString *res = [conent substringWithRange:NSMakeRange(start, end-start)];

    NSLog(@"showString\n %@\n",res);
}
enum CXChildVisitResult viewChildren(CXCursor cursor, CXCursor parent, CXClientData client_data){
    enum CXCursorKind linkkind = myclang_getCursorKind(cursor);
    if(linkkind == CXCursor_DeclRefExpr){
        CXString cxdisname =  myclang_getCursorDisplayName(cursor);
        
        const char* disname = myclang_getCString(cxdisname);
        
        if([nameArr containsObject:[NSString stringWithUTF8String:disname]]){
            return CXChildVisit_Break;
        }
    }
    return CXChildVisit_Recurse;
}

//我们可以在这个函数里拿到字符串的开始和结束的位置，然后再进行字符串加密操作。这样子就可以把整个项目的字符串进行加密。
enum CXChildVisitResult printVisitor(CXCursor cursor, CXCursor parent, CXClientData client_data) {
    CXFile file;
    unsigned int line,column,start,end;
    CXSourceRange range = myclang_getCursorExtent(cursor);
    CXSourceLocation startLocation = myclang_getRangeStart(range);
    CXSourceLocation endLocation = myclang_getRangeEnd(range);
    
    myclang_getExpansionLocation(startLocation, &file, &line, &column, &start);
    myclang_getExpansionLocation(endLocation, &file, &line, &column, &end);
    
    //获取文件名
    CXString cxname = myclang_getFileName(file);
    const char* filename = myclang_getCString(cxname);
    myclang_disposeString(cxname);
    
    //过滤文件
    if(filename == NULL || strcmp(filename, FILENAME)){
        return CXChildVisit_Continue;
    }
    
    showString(start,end);
    
    //获取displayName
    CXString cxdisname =  myclang_getCursorDisplayName(cursor);
    const char* disname = myclang_getCString(cxdisname);
    NSLog(@"disname is %s",disname);
    myclang_disposeString(cxdisname);
    
    //获取类型
    enum CXCursorKind kind = myclang_getCursorKind(cursor);
    CXString cxcurkind = myclang_getCursorKindSpelling(kind);
    const char* ccurkind = myclang_getCString(cxcurkind);
    NSLog(@"ccurkind is =>%s",ccurkind);
    myclang_disposeString(cxcurkind);
    
    //判断类型
    enum CXLinkageKind cxlinkkind = myclang_getCursorLinkage(cursor);
    if(!strcmp(ccurkind, "VarDecl")&&(cxlinkkind == CXLinkage_External || varDel_isStatic(cursor))){
        return CXChildVisit_Continue;
    }
    
    if(!strcmp(ccurkind, "ObjCStringLiteral")){
        NSLog(@"OC 字符串");
        showString(start,end);
        return CXChildVisit_Continue;
    }
    
    if(!strcmp(ccurkind, "StringLiteral")){
        NSLog(@"C 字符串");
        showString(start,end);
        return CXChildVisit_Continue;
    }
    
    const char* disname2 = myclang_getCString(cxdisname);
    
    
    NSLog(@"继续遍历孩子节点%s\n",disname2);
    
    
    return CXChildVisit_Recurse;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        void *hand = dlopen("/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib",RTLD_LAZY);
        
        //初始化函数指针
        initlibfunclist(hand);
        
        CXIndex cxindex = myclang_createIndex(1, 1);
        
        const char *filename = FILENAME;
        
        int index = 0;
        
        const char ** new_command = malloc(10240);
        
        NSMutableString *mus = [NSMutableString stringWithString:@"/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang -x objective-c -arch armv7 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk"];  // -Xclang -detailed-preprocessing-record
        
        NSArray *arr = [mus componentsSeparatedByString:@" "];
        
        for (NSString *tmp in arr) {
            new_command[index++] = [tmp UTF8String];
        }
        
        nameArr = [[NSMutableArray alloc] initWithCapacity:10];
        
        TU = myclang_parseTranslationUnit(cxindex, filename, new_command, index, NULL, 0, myclang_defaultEditingTranslationUnitOptions());
        
        CXCursor rootCursor = myclang_getTranslationUnitCursor(TU);
        
        myclang_visitChildren(rootCursor, printVisitor, NULL);
        
        myclang_disposeTranslationUnit(TU);
        myclang_disposeIndex(cxindex);
        free(new_command);
        
        dlclose(hand);
    }
    return 0;
}
