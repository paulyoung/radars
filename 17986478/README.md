# 17986478

Swift: Specifying a type variable in a protocol causes a segfault when an object conforms to that protocol

![Screenshot](https://raw.github.com/paulyoung/radars/master/17986478/SwiftProtocolTypeVariableBug.png)

## Summary:
A type variable can be specified as part of a protocol but any attempt to conform to that protocol by implementing the type variable in other objects causes a segfault.

## Steps to Reproduce:
1. Create a new Swift file
2. Define a protocol
3. Add a type variable to the protocol
4. Define an object that conforms to the protocol
5. Implement the type variable in the object
6. Execute the file using `xcrun swift` or add it to a target in an Xcode project and attempt to build.

## Expected Results:
The type variable can be accessed on objects that implement the protocol.

## Actual Results:
```
0  swift                    0x000000010ed38b58 llvm::sys::PrintStackTrace(__sFILE*) + 40
1  swift                    0x000000010ed39044 SignalHandler(int) + 452
2  libsystem_platform.dylib 0x00007fff8d4775aa _sigtramp + 26
3  libsystem_platform.dylib 0x00007fff51b47f68 _sigtramp + 3295480280
4  swift                    0x000000010e1d8078 (anonymous namespace)::ArgEmitter::emit(swift::Lowering::RValueSource&&, swift::Lowering::AbstractionPattern) + 424
5  swift                    0x000000010e1d1c18 (anonymous namespace)::CallEmission::apply(swift::Lowering::SGFContext) + 1080
6  swift                    0x000000010e1d4246 swift::Lowering::SILGenFunction::emitGetAccessor(swift::SILLocation, swift::AbstractStorageDecl*, llvm::ArrayRef<swift::Substitution>, swift::Lowering::RValueSource&&, bool, swift::Lowering::RValue&&, swift::Lowering::SGFContext) + 1254
7  swift                    0x000000010e1e9da1 swift::Lowering::SILGenFunction::emitRValueForDecl(swift::SILLocation, swift::ConcreteDeclRef, swift::Type, swift::Lowering::SGFContext) + 1745
8  swift                    0x000000010e1ea1a8 swift::Lowering::SILGenFunction::emitRValueForPropertyLoad(swift::SILLocation, swift::Lowering::ManagedValue, bool, swift::VarDecl*, llvm::ArrayRef<swift::Substitution>, bool, swift::Type, swift::Lowering::SGFContext) + 248
9  swift                    0x000000010e1fe4c2 swift::ASTVisitor<(anonymous namespace)::RValueEmitter, swift::Lowering::RValue, void, void, void, void, void, swift::Lowering::SGFContext>::visit(swift::Expr*, swift::Lowering::SGFContext) + 27298
10 swift                    0x000000010e1e8096 swift::Lowering::SILGenFunction::emitRValue(swift::Expr*, swift::Lowering::SGFContext) + 22
11 swift                    0x000000010e21c6c7 swift::Lowering::SILGenFunction::emitReturnExpr(swift::SILLocation, swift::Expr*) + 359
12 swift                    0x000000010e21f27d swift::ASTVisitor<swift::Lowering::SILGenFunction, void, void, void, void, void, void>::visit(swift::Stmt*) + 141
13 swift                    0x000000010e21c368 swift::Lowering::SILGenFunction::visitBraceStmt(swift::BraceStmt*) + 232
14 swift                    0x000000010e21f284 swift::ASTVisitor<swift::Lowering::SILGenFunction, void, void, void, void, void, void>::visit(swift::Stmt*) + 148
15 swift                    0x000000010e1ed1d3 swift::Lowering::SILGenFunction::emitFunction(swift::FuncDecl*) + 243
16 swift                    0x000000010e1cd096 swift::Lowering::SILGenModule::emitFunction(swift::FuncDecl*) + 230
17 swift                    0x000000010e1e7073 swift::ASTVisitor<SILGenType, void, void, void, void, void, void>::visit(swift::Decl*) + 355
18 swift                    0x000000010e1e59fb SILGenType::emitType() + 203
19 swift                    0x000000010e1e09de swift::Lowering::SILGenModule::visitNominalTypeDecl(swift::NominalTypeDecl*) + 30
20 swift                    0x000000010e1cf00b swift::Lowering::SILGenModule::emitSourceFile(swift::SourceFile*, unsigned int) + 411
21 swift                    0x000000010e1cf2d6 swift::SILModule::constructSIL(swift::Module*, swift::SourceFile*, unsigned int) + 342
22 swift                    0x000000010e1cf362 swift::performSILGeneration(swift::Module*) + 18
23 swift                    0x000000010e0b9ef7 frontend_main(llvm::ArrayRef<char const*>, char const*, void*) + 3479
24 swift                    0x000000010e0b7a2d main + 1725
25 libdyld.dylib            0x00007fff87e405fd start + 1
Stack dump:
0.	Program arguments: /Applications/Xcode6-Beta5.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift -frontend -interpret SwiftProtocolTypeVariableBug.swift -enable-objc-attr-requires-objc-module -target x86_64-apple-darwin13.3.0 -target-cpu core2 -module-name SwiftProtocolTypeVariableBug -sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.9.sdk -color-diagnostics
1.	While emitting SIL for 'anonname=0x7ffb2a14c4e0' at SwiftProtocolTypeVariableBug.swift:6:16
Segmentation fault: 11
```

## Version:
Xcode6-Beta5 (6A279r)

## Attachments:
'SwiftProtocolTypeVariableBug.swift' and 'SwiftProtocolTypeVariableBug.png' were successfully uploaded.
