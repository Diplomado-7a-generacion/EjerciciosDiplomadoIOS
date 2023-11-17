import UIKit

class Vehicle{
    var wheels: Int? // puede o no tener llantas sintaxis "opcional"
    init(wheels : Int){
        self.wheels = wheels
    }
}
class Scooter{
    var color : String
    init(color: String = "Blue"){
        self.color = color
    }
}
let myVehicle = Scooter()
