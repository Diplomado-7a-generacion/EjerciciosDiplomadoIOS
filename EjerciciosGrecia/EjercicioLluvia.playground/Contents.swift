import UIKit

let animal = "mouse"
let number = 2

var weather = "lluvia"
var time = 23
var dark = Array(0...6) + Array(19...23)
var light = 7...18
weather == "lluvia" ? print("🌧️") : print("❄️")
light ~= time ? print("usa bloqueador ") : print("no necesitas bloqueador")
// para ver si el elemento esta contenidor en el arreglo usamos ~ opcion n
// se pude solucionar poniendo validaciones en eln if de <= para los rangos
// y poniendo operadores logicos para validar las horas
