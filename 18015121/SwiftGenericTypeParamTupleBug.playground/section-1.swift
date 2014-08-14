struct Struct1<T, U> {
    let type: T.Type
    let tuple: U
}

struct Struct2 {

}

func func1() {
    let tuple1 = (
        double: 3.14
    )
    
    let tuple2 = (
        string: "3.14"
    )
    
    let s1 = Struct1(type: Struct2.self, tuple: tuple1)
    
    let s2 = Struct1(type: Struct2.self, tuple: tuple2)
}

func1()
