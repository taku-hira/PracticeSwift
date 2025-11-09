// 関数
func double(_ x: Int) -> Int { // func 関数名 (引数名: 引数の型) -> 戻り値の型 {
    return x * 2
}

let result = double(5)
print(result) // 出力: 10

// 戻り値が必要ない場合
func functionWithDiscardableResult() -> String {
    return "discardable"
}

_ = functionWithDiscardableResult() // 戻り値を無視する場合は_を使う

// 仮引数：関数の定義時に宣言するもの
// 実引数：関数の呼び出し時に渡す値

// 外部引数名：関数呼び出し時に使用する引数名
// 内部引数名：関数定義内で使用する引数名

func invite(user: String, to group: String) {
    // userは内部引数名、toは外部引数名
    print("\(user)さんを\(group)グループに招待しました")
}

invite(user: "太郎", to: "開発") // 出力: 太郎さんを開発グループに招待しました

// 外部引数名の省略: 外部引数名に_を使う
func sum(_ int1: Int, _ int2: Int) -> Int {
    return int1 + int2
}

let total = sum(3, 5)

// デフォルト引数
func greet(name: String = "ゲスト") {
    print("こんにちは、\(name)さん！")
}

greet() // 出力: こんにちは、ゲストさん！
greet(name: "花子") // 出力: こんにちは、花子さん！

// インアウト引数：引数の値を関数内で変更し、その変更を呼び出し元に反映させる

func greet2(userName: inout String) {
    userName = "Hello, " + userName
}

var name = "太郎"
greet2(userName: &name)
print(name) // 出力: Hello, 太郎

// 可変超引数: 引数の個数が不定の場合に使用する
func sumAll(numbers: Int...) -> Int {
    var total = 0
    for number in numbers {
        total += number
    }
    return total
}

// クロージャ：スコープ内の変数や定数を保持した人まとまりの処理
// { (引数名: 引数の型) -> 戻り値の型 in
//     // 処理内容
// }

let doubler = { (x: Int) -> Int in
    return x * 2
}

doubler(5) // 出力: 10
