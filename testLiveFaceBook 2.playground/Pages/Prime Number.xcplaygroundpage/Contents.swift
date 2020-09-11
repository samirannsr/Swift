//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
func primeNumber(upTo max: Int) -> [Int] {
    guard max > 1 else { return [] }
    var sieve = [Bool](repeating: true, count: max)
    sieve[0] = false
    sieve[1] = false
    for number in 2 ..< max {
        if sieve[number] == true {
            for multiple in stride(from: number * number, to: sieve.count, by: number) {
                sieve[multiple] = false }
        } }
    return sieve.enumerated().compactMap { $1 == true ? $0 : nil }
}
primeNumber(upTo: 100)
