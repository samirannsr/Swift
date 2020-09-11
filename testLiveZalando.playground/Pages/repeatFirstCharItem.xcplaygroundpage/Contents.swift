
import Foundation

//==========first repeat item
func repeatCharItem(_ str: String) -> String? {
    guard str.count != 0  else {  return nil }
    let tempStr = str.lowercased().filter{$0 != " "}
    let arraySet = NSCountedSet(array: Array(tempStr))
 
    for item in tempStr {
        if  arraySet.count(for: item) > 1 {
            return String(item)
        }
    }
    return nil
}

var fisrRepeatedItem:Any?
func countingRepeatedItem(_ array:[Any]) {
    guard array.count > 0 else {
        return
    }
    let countSet = NSCountedSet(array: Array(array))
    for i in array {
        if   countSet.count(for: i) > 1 {
            fisrRepeatedItem =  i
        }
    }
}
//print(repeatFirstCharItem(str: "qw rt yu uw"))

//================find first repeat item
func repeatCharItem2(str: String)-> String? {
    guard str.count != 0  else {  return nil }
    let tempStr = str.lowercased().filter{$0 != " "}
    let arrayDic = Dictionary(grouping: tempStr, by: {$0}).filter{(key, value) in value.count == 1 }.keys
    return arrayDic.isEmpty ? nil : String(arrayDic.first!)
}


func findFirstRepeatedItem(str: String) -> Character {
    var dic = [Character: Int]()
    guard !str.isEmpty else {
        return "0"
    }
    for i in str {
        print(i, dic)
        if i != " " && dic[i] != nil {
            return i
        } else {
            dic[i, default:0] += 1
        }
    }
    return "0"
}
print(findFirstRepeatedItem(str: "qw rt yu uw"))


//===========group slice same char
let students = ["Kofi", "Abena", "Efua", "Kweku", "Abosua","Efua"]
//let preFiX = students.


let studentsByLetter = Dictionary(grouping: students, by: {Array($0)[..<2] })

let studentsByLetter1 = Dictionary(grouping: students, by: {$0[..<$0.index($0.startIndex,offsetBy:2)] })
//let studentsByLetter = Dictionary(grouping: students, by: { _ in students.prefix(2) })
print(studentsByLetter)
print(studentsByLetter1)

//$0.index($0.startIndex,offsetBy:2)



let letters = "abracadabra"
      let letterCount = letters.reduce(into: [:]) { counts, letter in
          counts[letter, default: 0] += 1
      }
      // letterCount == ["a": 5, "b": 2, "r": 2, "c": 1, "d": 1]
print(letterCount)

let p = letters.reduce(into: []){$0.append($1)}
var dic = [Character:Int]()

//تکراری ها در دیکشنر
let str = letters.reduce(into: [:]){ count,letter in
    count[letter , default:0] += 1
}
print(str)
//["a": 5, "r": 2, "b": 2, "c": 1, "d": 1]
