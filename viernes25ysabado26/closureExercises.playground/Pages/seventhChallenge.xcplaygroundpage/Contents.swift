import Foundation

/// You can ignore line 8 and 9, asume that the constants ``first`` and ``second`` will contain an **Array of Integers**
/// For testing locally you can comment line 8 and 9 and remove the `//` from lines 10 and 11

/// **Remember to comment line 10 and 11 and remove the `//` from lines 8 and 9 before submitting your code**

let first: [Int] = CommandLine.arguments[1].split(separator: ",").map { Int($0)! }
let second: [Int] = CommandLine.arguments[2].split(separator: ",").map { Int($0)! }
//let first = [1, 2, 3, 4]
//let second = [5, 5, 5, 3]


// Print the resulting array



