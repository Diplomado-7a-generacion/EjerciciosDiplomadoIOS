import Foundation
// genericos


//let someArray : Array <Int> = [Int]()
// stack : last in first out
// push & pop

//struct Stack<Element>{
//    var items = [Element]()
//    mutating func push(_ newItem: Element){
//        items.append(newItem)
//    }
//    mutating func pop()-> Int? {
//        guard items.isEmpty else {return nil}
//        return items.removeLast()
//    }
//}
//var intStack : Stack<Int> = Stack()
//intStack.push(1)
//intStack.push(2)
//print(intStack.pop())
//print(intStack.pop())
//print(intStack.pop())
//var doubleStack: Stack<Double> = Stack()
//doubleStack.push(2.0)

// map
//func myMap<T,U> (_ items: [T], _ transformer: (T) -> (U)) -> [U]{
//    var result = [U]()
//    for item in items{
//        let transformedItem = transformer(item)
//        result.append(transformedItem)
//    }
//    return result
//}
//let myStrings = ["one", "two", "three"]
//let stringsLenghts = myMap(myStrings) { $0.count}
//print(stringsLenghts)

//otro
//func checkIfEqual<T: Equatable> (_ first: T, _ second: T) -> Bool{
//    return first == second
//}
//print(checkIfEqual(1,2.5))
//
//func checkIfDescriptionsMatch<T: CustomStringConvertible, U: CustomStringConvertible>(_ first: T, _ second: U) -> Bool{
//    return first.description == second.description
//}
//print(checkIfDescriptionsMatch(Int (1), UInt(1)))
//print(Int(1))
//print(UInt(1))

//otro
protocol IteratorProtocol{
    associatedtype Element
    mutating func next() -> Element?
}
protocol Sequence{
    associatedtype iterator : IteratorProtocol
    associatedtype Element where Element == iterator.Element
    
    func makeIterator() -> iterator
}
struct Stack<Element>: Sequence{
    typealias iterator = StackIterator
    var items = [Element]()
    mutating func push(_ newItem: Element){
        items.append(newItem)
    }
    mutating func pop() -> Element?{
        guard items.isEmpty else{return nil}
        return items.removeLast()
    }
}
struct StackIterator<T> : IteratorProtocol{
    typealias Element = T
    var stack: Stack<T>
    mutating func next() -> T? {
        return stack.pop()
    }
}
var myStack = Stack<Int>()
myStack.push(10)
myStack.push(20)
myStack.push(30)

var myStackIterator = StackIterator(stack: myStack)
while let value = myStackIterator.next(){
    print(value)
}

let myStack = Stack(items: [1,2,3,4,5])

