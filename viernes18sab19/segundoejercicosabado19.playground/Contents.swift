import UIKit

 var cellphone: String = "556890530"
 var landline: String? = nil
 if let landline2 = landline{
 print(landline2)
 }
 guard let landline2 = landline else {fatalError("ops")}
 print(landline2)
 
//tipos de primmera clase enumeradores

enum Pet: String{
    case dog = "🐶"
    case cat = "gato"
    case mouse = "raton"
    case parrot = "pajaro"
    case turtle = "tortuga"
}
let myPet = Pet(rawValue: "pajaro")
let myTurtle: Pet = .turtle
let myParakeet = Pet.parrot
switch myPet{
case .dog: print("perro")
    // si es que existe mypet imprime el rawValue
    // en caso de que no exista imprime el rawValue de turtle
default : print(myPet?.rawValue ?? Pet.turtle.rawValue)
}
 
//CICLOS

for i in 1...5{
    print(i)
}
let numbers = [1,3,5,7]
for number in numbers {
    print(number)
}
 
// de cero a 20 sin incluir el 20 de 5 en 5

let intervals = stride(from: 0, to: 20, by: 5)
let interval2 = stride(from: 0, through: 20, by: 5)
for intervalo in interval2 {
    print(intervalo)
 }
 
//iterando sobre un diccionario

let pokemon = ["Fire":"charmander","Water":"Mudkip"]
for(type, name) in pokemon {
    print("I like \(name) of type \(type)")
}
print("/n/n/n")
for poke in pokemon{
    print("I like \(poke.value) of type \(poke.key)")

let names: Set = ["James","Dean","Sam","Steve","Chris"]
print("\n For-in loop with counter as index ")
var index = 0
for _ in names{
    print(index)
    index += 1
}

for (index2, name) in names.enumerated(){
    print(index2,name)
}
for(index, name) in names.enumerated(){
    if index % 2 == 0{
        print(name)
    }else{
        break
    }
}

// con continue
for(index, name) in names.enumerated(){
    if index % 2 == 0{ // se puede hacer con where
        continue
    }
    print(name)
}
for poke in pokemon where poke.key == "Fire"{
    print(poke.value)
}
 }
