import UIKit

var dado = Int.random(in: 1...6)
var ficha : Int
ficha = dado
if(ficha == 2){
    print("primera escalera")
    ficha = 10
}
ficha = Int.random(in: 1...6)
if (ficha == 10){
    ficha = Int.random(in: 1...6)
}
if(ficha == 5){
    ficha = 16
    
}

