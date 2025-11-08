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

// Dictionary 辞書 key-valueペアの集まり
var dictionary: [String: Int] = [
    "apple": 100,
    "banana": 150,
    "cherry": 200
]

// からの辞書
let emptyDictionary: [String: String] = [:]
// アクセス
print(dictionary["banana"]!) // 出力: 150
// 更新
dictionary["banana"] = 180
print(dictionary) // 出力: ["apple": 100, "banana": 180, "cherry": 200]
// 追加
dictionary["date"] = 220
print(dictionary) // 出力: ["apple": 100, "banana": 180,
// "cherry": 200, "date": 220]
// 削除
dictionary["apple"] = nil
print(dictionary) // 出力: ["banana": 180, "cherry": 200, "date": 220]

// 範囲型 (Range)
//  範囲演算子
// ..< : 下限を含み、上限を含まない範囲
let range1 = 0..<5 // 0, 1, 2, 3, 4
// ... : 下限と上限の両方を含む範囲
let range2 = 0...5 // 0, 1, 2, 3, 4, 5

// 境界の値へのアクセス
let range = 1...5
print(range.lowerBound) // 出力: 1
print(range.upperBound) // 出力: 5

// あたいが範囲に含まれるかの判定
let number = 3
if range.contains(number) {
    print("\(number)は範囲内です") // 出力: 3は範囲内です
} else {
    print("\(number)は範囲外です")
}

// Character型: 文字を表す型
let charA: Character = "A"
let charB: Character = "B"


// シーケンスとコレクションを扱うためのプロトコル
// Sequenceプロトコル: 順番に値を取り出せる型が準拠するプロトコル

// forEachメソッド: シーケンスの各要素に順次アクセス
let numbers = [1, 2, 3, 4, 5]
var enumerated = [] as [Int]
numbers.forEach({element in enumerated.append(element)})


// filterメソッド: 条件に合う要素だけを抽出
let evenNumbers = numbers.filter({$0 % 2 == 0})
print(evenNumbers) // 出力: [2, 4]

// mapメソッド: 各要素に対して変換処理を行い、新しいシーケンスを生成
let squaredNumbers = numbers.map({$0 * $0})
print(squaredNumbers) // 出力: [1, 4, 9, 16, 25]
// flatMapメソッド: 各要素に対して変換処理を行い、結果を一つのシーケンスに連結
let nestedArrays = [[1, 2], [3, 4], [5]]
let flattenedArray = nestedArrays.flatMap({$0})
print(flattenedArray) // 出力: [1, 2, 3, 4, 5]
// compactMapメソッド: 各要素に対して変換処理を行い、nilでない結果だけを集めた新しいシーケンスを生成
let stringNumbers = ["1", "2", "three", "4", "five"]
let validNumbers = stringNumbers.compactMap({Int($0)})
print(validNumbers) // 出力: [1, 2, 4]



// Collectionプロトコル: 複数の値を格納し、インデックスでアクセスできる型が準拠するプロトコル

// isEmptyプロパティ: コレクションが空かどうかを判定
let emptyArray: [Int] = []
print(emptyArray.isEmpty) // 出力: true

// countプロパティ: コレクションの要素数を取得
let fruits = ["apple", "banana", "cherry"]
print(fruits.count) // 出力: 3

// firstプロパティ: コレクションの最初の要素を取得
if let firstFruit = fruits.first {
    print(firstFruit) // 出力: apple
}

// lastプロパティ: コレクションの最後の要素を取得
if let lastFruit = fruits.last {
    print(lastFruit) // 出力: cherry
}
