# 17986597

Swift: Defining protocols and typealiases with apparent circular dependencies causes a segfault

![Screenshot](https://raw.github.com/paulyoung/radars/master/17986597/SwiftProtocolTypealiasBug.png)

## Summary:
Defining a protocol with a typealias that must conform to another protocol that has a typealias that must conform to the original protocol causes a segfault.

## Steps to Reproduce:
1. Create a new Swift file
2. Define 2 protocols
3. Add a typealias to the first protocol that must conform to the second protocol
4. Add a typealias to the second protocol that must conform to the first protocol
5. Execute the file using `xcrun swift` or add it to a target in an Xcode project and attempt to build.

## Expected Results:
The typealiases can be used in generics, like so:

<T: FirstProtocol, U: SecondProtocol where T.FirstTypealias == SecondProtocol, U.SecondTypealias == T>

## Actual Results:
Segmentation fault: 11

## Version:
Xcode6-Beta5 (6A279r)

## Attachments:
'SwiftProtocolTypealiasBug.swift' and 'SwiftProtocolTypealiasBug.png' were successfully uploaded.
