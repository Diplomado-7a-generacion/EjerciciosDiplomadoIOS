//: [Previous](@previous)

import Foundation
extension Double{
    var squared: Double{ return self * self }
}
let sideLenght: Double = 12.5
let area = sideLength.squared
print(area)

struct Car{
    let maker: String
    let model: String
    let year: Int
    
    var fuelLevel: Double{
        willSet{
            precondition(newValue <= 1.0 && newValue >= 0.0, "New value must be between 0 ")
        }
    }
}
let firstCar = Car()
