// 変数と定数

// 変数：　var 変数名: 型 = 初期値
var message: String = "Hello, Swift!"
print(message) // 出力: Hello, Swift!

// 定数：　let 定数名: 型 = 初期値
let number: Int = 42
print(number) // 出力: 42
//number = 50 // エラー: 定数は再代入できません

// 型の確認方法
print(type(of: message)) // 出力: String
print(type(of: number)) // 出力: Int


// スコープ

// ローカルスコープ
func someFunction() {
    let a = "a"
    print(a) // 出力: a
}

// print(a) // エラー: 'a' はスコープ外です
someFunction()

// グローバルスコープ

let globalA = "a"

func someFunction2() {
    print(globalA) // 出力: a
}

print(globalA) // 出力: a
someFunction2()
