// 条件分岐

// if文
let score = 85

if score <= 90 {
    print("90点以下です")
} else {
    print("90点より上です")
}

// if-let文: 値の有無による分岐
// if-let文で定義された定数は、if文のスコープ内でのみ有効

let optionalA = Optional(1)

if let a = optionalA {
    print("値は \(a) です")
} else {
    print("値はnilです")
}

let optionalB = Optional("b")

if let b = optionalA, let c = optionalB {
    print("値は \(b) と \(c) です")
} else {
    print("いずれかの値がnilです")
}

let d: Any = 1

if let int = d as? Int {
    print("dはInt型で値は \(int) です")
} else {
    print("dはInt型ではありません")
}

// guard文: 条件不成立時に早期退出する分岐

func someFunction() {
    let value = -1
    guard value >= 0 else {
        print("0未満です")
        return // 退出する記述が必要
    }
}
someFunction() // 出力: 0未満です

// guard-let文: 値の有無による早期退出
func anotherFunction() {
    let optionalValue: Int? = nil
    guard let value = optionalValue else {
        print("値はnilです")
        return // 退出する記述が必要
    }
    print("値は \(value) です") // guard-let文で定義した定数はelse以降で有効 : 値の存在が保証される
}
anotherFunction() // 出力: 値はnilです

// if文との使い分け
// 条件に応じて早期退出するコードはguard文の方がシンプルで良い

// switch文: 複数の条件分岐
let integer = 1

switch integer {
    case Int.min..<0:
        print("負の数です")
    case 0:
        print("ゼロです")
    case 1..<Int.max:
        print("正の数です")
    default:
        print("0")
}

// where句: 追加条件を指定する
let anotherInteger = 10
switch anotherInteger {
    case let x where x < 0:
        print("負の数です")
    case 0:
        print("ゼロです")
    case let x where x > 0:
        print("正の数です")
    default:
        print("0")
}

// label break分の制御対象の指定

