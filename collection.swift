// Collection: 値の集まり

// 値の集まりの表現

// 配列 (Array)

let a = [1, 2, 3]

let b = ["a", "b", "c"]

let array: [Int] = []

let array2: [Any] = [1, "a", true]

// 要素にできる型
let integers = [1, 2, 3, 4, 5] //[Int]型
let strings = ["apple", "banana", "cherry"] //[String]型

let integerArray = [[1, 2], [3, 4]] // [[Int]]型 2次元配列

// Arrayの操作
// アクセス
var strings = ["apple", "banana", "cherry"]
print(strings[0]) // 出力: apple
// 更新
strings[1] = "blueberry"
print(strings) // 出力: ["apple", "blueberry", "cherry"]
// 追加（末尾）
strings.append("date")
print(strings) // 出力: ["apple", "blueberry", "cherry", "date"]
// 任意の位置に挿入
strings.insert("avocado", at: 1)
print(strings) // 出力: ["apple", "avocado", "blueberry", "cherry", "date"]

let integers1 = [1, 2, 3]
let integers2 = [4, 5, 6]
let combined = integers1 + integers2
print(combined) // 出力: [1, 2, 3, 4, 5, 6]

// 削除
strings.remove(at: 2)
print(strings) // 出力: ["apple", "avocado", "cherry", "date"]
strings.removeLast()
print(strings) // 出力: ["apple", "avocado", "cherry"]
strings.removeAll()
print(strings) // 出力: []
