# 18015121

Swift: Using a type as a generic parameter causes EXC_BAD_ACCESS when also passing a tuple as a parameter, depending on its contents

![Screenshot](https://raw.github.com/paulyoung/radars/master/18015121/SwiftGenericTypeParamTupleBug.png)
![Screenshot](https://raw.github.com/paulyoung/radars/master/18015121/SwiftGenericTypeParamTupleBug2.png)
![Screenshot](https://raw.github.com/paulyoung/radars/master/18015121/SwiftGenericTypeParamTupleBug3.png)

## Summary:
Using a type as generic parameter causes a runtime error when one of the other parameters is a tuple, depending on what the tuple contains.

Making the parameter non-generic does not trigger the issue.

Making the parameter accept an instance instead of a type does not trigger the issue.

## Steps to Reproduce:
1. Create a new playground.
2. Define a struct that has 2 generic parameters; one of type T.Type and another of type U
3. Define a second, empty struct.
4. Define a function.
5. Within the function, assign a tuple that contains a string to a constant.
6. Assign a new instance of the first struct to a constant by passing in the type of the second struct and the tuple respectively.

## Expected Results:
The parameters are passed without issue and are accessible inside of the function.

## Actual Results:
Execution was interrupted, reason: EXC_BAD_ACCESS (code=EXC_I386_GPFLT).

## Version:
Xcode6-Beta5 (6A279r)

## Attachments:
'SwiftGenericTypeParamTupleBug.playground.zip', 'SwiftGenericTypeParamTupleBug.png', 'SwiftGenericTypeParamTupleBug2.png' and 'SwiftGenericTypeParamTupleBug3.png' were successfully uploaded.
