import Foundation

/// You can ignore line 8, asume that the constant ``numbers`` will contain an **Array of Integers**
/// For testing locally you can comment line 8 and remove the `//` from line 9

/// **Remember to comment line 9 and remove the `//` from line 8 before submitting your code**

let numbers: [Int] = Array(CommandLine.arguments.dropFirst()).map { Int($0)! }
//let numbers = [1, 2, 3, 4, 5, 6, 7]
//let max = numbers.reduce(0) { partialResult, number in
//    return partialResult > number
//}
let max = numbers.reduce(0) { partialResult, number in
    if partialResult > number {
        return partialResult
    } else {
        return number
    }
}
print(max)

// Print the resulting value



