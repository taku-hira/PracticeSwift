// Bool
var isTrue: Bool = true
var isFalse: Bool = false

let a = !isTrue

// 論理積
let b = isTrue && isFalse
// 論理和
let c = isTrue || isFalse

// 数値型
let aaa = 123
// Double型（浮動小数点）
let bb = 1.0

// 比較演算
// 123 == 100  // false
// 123 != 100  // true
// 123 > 100   // true
// 123 < 100   // false
// 123 >= 100  // true
// 123 <= 100  // false

// 文字列型
let aa = "文字列を入れる"

let result = "優勝"
let output = "結果：\(result)"
print(output) // 出力: 結果：優勝

// 複数行
let haiku = """
古池や
蛙飛び込む
水の音
"""
print(haiku)

var stI = "Hello, "
let stII = "World!"
stI.append(stII) // 出力: Hello, World!

// Optional型:値があるか空かを表す型
// Optional<Int>
// シンタックスシュガー
// Int?

enum Optional<Wrapped> {
    case none // nilを表す
    case some(Wrapped) // Optional値
}

let none = Optional<Int>.none
let some = Optional<Int>.some(100)
print(none) // 出力: none
print(some) // 出力: some(100)

// if let value = Optional<Wrapped> 型の値 {
//     値が存在する場合に実行される分
// }

// ??演算子
let optionalInt: Int? = 1
// 定数optionalIntがnilでなければその値を、nilであれば0を返す
let int = optionalInt ?? 0
print(int) // 出力: 1

// 強制アンラップ
let A: Int? = 42
let B: Int? = 100

let sumAB = A! + B!

// オプショナルチェイン


