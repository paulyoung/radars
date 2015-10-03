# 22964053

Swift: crash at runtime where == operator is treated as recursive

## Summary:
When providing a particular implementation of the "equal to" operator (==) that also uses the "equal to" operator, the project compiles without issue but crashes at runtime with a stack of over 6500 items.

## Steps to Reproduce:
1. git clone git@github.com:paulyoung/OptionalEquatableCollection.git --recursive
2. git checkout 387a922ce9a3b708b50c3d6b7e9bcd598023376f
3. Open the workspace in Xcode and run the tests

## Expected Results:
The tests pass.

## Actual Results:
Thread 1: EXC_BAD_ACCESS (code=2, address=0x7fff5c937fb8)

## Version:
Version 7.0.1 (7A1001)
