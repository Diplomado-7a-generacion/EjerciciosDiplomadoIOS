import Foundation

//definiendo funciones
//func myAwesomePrintingFunction(){
//    print("Hello world")
//}
//myAwesomePrintingFunction()

// ejemplo con un paso de parametro
func myAwesomePrintingFunction(name : String){
    print("Hello \(name)! Welcome to the class")
}
myAwesomePrintingFunction(name:"pau")

// ejemplo con varios tipos de parametros
func add(lhs: Int, rhs: Int){
    print("\(lhs) + \(rhs) = ",lhs+rhs)
}
add(lhs: 8, rhs: 9)

// podemos ppner una funcion con parametros por defecto o darle el valor
//directamente desde la funcion
func printmensaje(to name: String, course: String = "Diplomado ios"){
    print("hello \(name), welcom to \(course)")
}
printmensaje(to: "Pau", course: "Diplomado android")


//var error = "the process failed : "
//func appendErrorCode(code: Int, toErrorString errorString: inout String){
//    if code == 400{
//        errorString += "bad request"
//    }
//}
//print(error)
//appendErrorCode(code: 400, toErrorString: &error)
//print(error)

func welcomeMessage(to name: String) -> String{ // solo decimos que vamos a regresar un string
    return "welcome \(name)" // si solo tenemos una linea podemos omitor el return
}
let message = welcomeMessage(to: "Pau")
print(message)
// se pueden anidar funciones desde la interna hasta las mas externa
print(welcomeMessage(to : "Pau"))

func areaTriangleWith(base: Double, height: Double) -> Double{
    let rectangle = base * height
    func divide() -> Double {
        return rectangle/2
    }
    return divide()
}
print(areaTriangleWith(base: 3, height: 4))

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]){
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers{
        if number % 2==0{
            evens.append(number)
        }else{
            odds.append(number)
        }
    }
    return (evens: evens, odds: odds)
}
let aBunchOfNumbers = [10,1,4,3,57,43,27,84]
let sortedEvenAndOddNumbers = sortedEvenOddNumbers(aBunchOfNumbers)
print("The even numbers are: \(sortedEvenAndOddNumbers.evens)")
print("the odd numbers are \(sortedEvenAndOddNumbers.odds)")

func grabMiddleName(fullName name: (first: String, middle: String?, last: String)) -> String?{
    return name.middle
}
let middleName = grabMiddleName(fullName: (first:"Pau", middle: "middle name", last: "flores"))
if let middleName = middleName{
    print(middleName)
}

// terminar antes una funcion con un return
func greetByMiddleName(fromFullnName name: (first: String, middle: String, last: String)){
    print("hey , \(name.middle)")
}
// ejemplo de guard
func greetMiddleName(fullName name: (first: String, middle: String?, last: String), age: Int){
    guard let middelname = name.middle, age > 18 else{
        print("hey there")
        return
    }
    print("hey \(middelname)")
}

func sortedEvenoddnumbers(_ numbers: [Int]) -> (even : [Int], odd: [Int]){
    return (even: [], odd: [])
}
//let myFunction: ([Int] -> ([Int],[Int]) = sortedEvenoddnumbers()
                 
// https://classroom.github.com/a/f9-UgIJg

