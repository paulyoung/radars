# 17970882

Swift: using generics, specifying that a types raw value must equal another type allows incorrect raw values

![Screenshot](https://raw.github.com/paulyoung/radars/master/17970882/SwiftGenericsRawValueBug.png)

## Summary:
Specifying that a type's raw value must equal another type does not prevent the use of incorrect types.

## Steps to Reproduce:
1. Create a playground
2. Define a function that accepts a single argument, whose generic type conforms to RawRepresentable and whose Raw value must equal a String
3. Inside the function body, print the raw value using toRaw()
4. Define an enumerable whose raw value is an Int
5. Inside the enum, provide at least one case
6. Call the function and pass in a case from the enum as the argument

## Expected Results:
A compiler error stating that the argument is not of the correct type.

## Actual Results:
A runtime exception: Execution was interrupted, reason: EXC_BAD_ACCESS.

## Version:
Xcode6-beta5 (6A279r)

## Attachments:
'SwiftGenericsRawValueBug.playground.zip' and 'SwiftGenericsRawValueBug.png' were successfully uploaded.
