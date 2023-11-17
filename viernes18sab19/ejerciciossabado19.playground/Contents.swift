import UIKit
/*
let animal = "cat"
if animal == "dog"{
    print("Its a dog")
}else{
    print("not a dog ")
}
*/
let animal = "mouse"
let number = 2
/*
if animal == "dog" || animal == "cat"{
    print ("Common pet")
}else{
    print("What is it?")
}

if animal == "dog" && animal == "cat"{
    print ("Common pet")
}else{
    print("What is it?")
}
if animal == "cat"{
    print ("Its a cat")
}else if number == 3{
    print("Number 3")
}
if #available(iOS 16.6, *){
    // SOLO PARA ESE IOS
} else{
    // codigo para so anteriores
}
if #unavailable(iOS 15.0){
    // para s anteriores
}

// operador ternario""
number == 2 ? print("its 2 ") : print("some other number ")
var value = number == 2 ? "its 2" : "some other number "
value
var value = number == 2 ? number : 4
value
 */
var weather = "lluvia"
var time = 23
var dark = Array(0...6) + Array(19...23)
var light = 7...18
weather == "lluvia" ? print("🌧️") : print("❄️")
light ~= time ? print("usa bloqueador ") : print("no necesitas bloqueador")
// para ver si el elemento esta contenidor en el arreglo usamos ~ opcion n
// se pude solucionar poniendo validaciones en eln if de <= para los rangos
// y poniendo operadores logicos para validar las horas
