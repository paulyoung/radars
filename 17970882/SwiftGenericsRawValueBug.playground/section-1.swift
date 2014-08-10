func foo<T: RawRepresentable where T.Raw == String>(bar: T) {
    println("\(bar.toRaw())")
}

enum Baz: Int {
    case Qux = 1
}

foo(Baz.Qux)
