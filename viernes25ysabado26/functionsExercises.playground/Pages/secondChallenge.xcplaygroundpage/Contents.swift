import Foundation

/// You can ignore line 8, asume that the constant ``groceryList`` will contain an **Array of Strings**
/// For testing locally you can comment line 8 and remove the `//` from line 9

/// **Remember to comment line 9 and remove the `//` from line 8 before submitting your code**

let groceryList: [String] = Array(CommandLine.arguments.dropFirst())
//let groceryList: [String] = ["green beans", "milk", "black beans", "pinto beans", "apples"]

func siftBeans(fromGroceryList arrayBeans: [String]) -> (beans: [String], otherGrocery: [String]) {
    
    var beans = [String]()
    var otherGrocery = [String]()
    
    for eat in arrayBeans {
        if eat.hasSuffix("beans"){
            beans.append(eat)
        }else{
            otherGrocery.append(eat)
        }
    }
    return (beans:beans, otherGrocery:otherGrocery)
}

let result = siftBeans(fromGroceryList: groceryList)
// Print the array of beans
print(result.beans)


// Print the array of other groceries
print(result.otherGrocery)

