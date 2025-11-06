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

// Any型 : あらゆる型の値を格納できる型
let string: Any = "文字列"
let integer: Any = 123

// 型の情報が失われるため、数値であっても計算はできない

// タプル型: 複数の値を一つにまとめる型
var tuple: (Int, String) = (100, "文字列")
// インデックスによるアクセス
print(tuple.0) // 出力: 100
print(tuple.1) // 出力: 文字列


// 要素名によるアクセス

let namedTuple: (id: Int, name: String) = (id: 1, name: "Alice")
print(namedTuple.id)   // 出力: 1
print(namedTuple.name) // 出力: Alice

// Void型: 値を持たないタプル型
() // Void
// 関数の戻り値がない場合に使用される

// 型キャスト: 別の型として扱う操作
// アップキャスト: 上位の型として扱う操作
let any = "abs" as Any // String型をAny型にアップキャスト

// ダウンキャスト: 下位の型として扱う操作

let someAny: Any = "Hello, World!"
let someString = someAny as? String // Any型をString型にダウンキャスト
print(someString!) // 出力: Hello, World!

let someAny3: Any = 123
let someInt = someAny3 as! Int // Any型をInt型に強制ダウンキャスト

// 型の判定
let aaaa: Any = 1
let isInt = aaaa is Int // true

// 値の比較のためのプロトコル

// Equatableプロトコル: 等価性を比較するためのプロトコル

// Comparableプロトコル: 順序を比較するためのプロトコル
