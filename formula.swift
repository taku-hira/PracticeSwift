// 式の組み立て
/**
    ・値の返却のみを行う式
    ・演算を行う式
    ・処理を呼び出す式
*/

// 値の返却のみを行う式
let a = 1
let b = a + 2
print(b) // 出力: 3

// リテラル式
let c = 1

// メンバー式：型のメンバーにアクセスする式
let text = "Hello"
let length = text.count
print(length) // 出力: 5

// クロージャ式：呼び出し可能な処理を定義する式
// クロージャ：処理をまとめて呼び出し可能にしたもの
// ({ 引数 in 戻り値を返す式 })

let original = [1, 2, 3, 4, 5]

let doubled = original.map({ value in value * 2 })
print(doubled) // 出力: [2, 4, 6, 8, 10]


// 演算を行う式

let x = 10
let y = 3

let sum = x + y
print(sum) // 出力: 13
let difference = x - y
print(difference) // 出力: 7
let product = x * y
print(product) // 出力: 30
let quotient = x / y
print(quotient) // 出力: 3
let remainder = x % y
print(remainder) // 出力: 1


// 算術演算子の両辺の型は同じである必要があります

let m: Int = 5
let n: Int = 2
let result = m + n
print(result) // 出力: 7

let l: Double = 5.0
// let result2 = l + n
// print(result2) // エラー: 型 'Double' と 'Int' の間で '+' 演算子を使用できません


// 異なる型同士で演算を行う場合は、型変換が必要です

let int = 5
let double = 2.5

print(Double(int) + double) // 出力: 7.5


// 符号演算子

// 関数を呼び出す式

// 10 と 20 の大きい方を返す
print(max(10, 20)) // 出力: 20


// イニシャライザを呼び出す式 型名(引数名1: 引数1, 引数名2: 引数2, ...)

let string = String(123) // 整数 123 を文字列 "123" に変換する

print(string) // 出力: 123
