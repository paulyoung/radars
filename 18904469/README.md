# 18904469

Depending on the input, the output of `swiftc -dump-ast` has unbalanced parentheses

![Screenshot](https://raw.github.com/paulyoung/radars/master/18904469/Screen%20Shot%202014-11-07%20at 03.38.15.png)

## Summary:
When producing an abstract syntax tree via the command line, the number of opening parentheses "(" in the output is not equal to the number of closing parentheses ")".

## Steps to Reproduce:
1. Execute `xcrun --sdk macosx swiftc -dump-ast constant.swift 2> dump.ast`
2. Examine the contents of dump.ast

## Expected Results:
Produce an AST with balanced parentheses.

## Actual Results:
Produce an AST with unbalanced parentheses.

## Version:
Swift version 1.1 (swift-600.0.54.20)<br/>
Target: x86_64-apple-darwin13.4.0

## Attachments:
'constant.swift', 'constant.ast', 'expected.ast', 'ast.diff' and 'Screen Shot 2014-11-07 at 03.38.15.png' were successfully uploaded.
