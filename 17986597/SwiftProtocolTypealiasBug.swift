protocol Alpha {
    typealias Beta: Gamma
}

protocol Gamma {
    typealias Delta: Alpha
}


// Use case
/*
struct Epsilon<T: Alpha, U: Gamma where T.Beta == U, U.Delta == T> {

}
*/
