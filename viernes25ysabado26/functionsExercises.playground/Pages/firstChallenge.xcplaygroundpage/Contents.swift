import Foundation

/// You can ignore lines 8 to 17, asume that the constant ``name``  contains a **Named Tuple of Strings**
/// For testing locally you can comment lines 8 to 17 and remove the `//` from line 19

/// **Remember to comment line 17 and remove the `//` from line 8 to 17 before submitting your code**

let name: (first: String, middle: String?, last: String)
if CommandLine.arguments.count > 3 {
    name.first = CommandLine.arguments[1]
    name.middle = CommandLine.arguments[2]
    name.last = CommandLine.arguments[3]
} else {
    name.first = CommandLine.arguments[1]
    name.middle = nil
    name.last = CommandLine.arguments[2]
}

//let name = (first: "Alois", middle: "Rumpelstiltskin", last: "Chaz")
func greetMiddleName(fullName name: (first: String, middle: String?, last: String)){
    guard let middelname = name.middle, middelname.count > 10 else {
        print("Hey there!")
        return
    }
    print("Hey, \(name.first) \(middelname.first!). \(name.last)")
}
greetMiddleName(fullName: name)
// print the greeting
