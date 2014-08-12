protocol Alpha {
    class var beta: String { get }
}

struct Gamma: Alpha {
    static let beta: String = "beta"
}
