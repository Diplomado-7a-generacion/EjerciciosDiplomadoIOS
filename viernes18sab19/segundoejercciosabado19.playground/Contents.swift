import Foundation
/*
let animal = "dog"
switch animal{
case "dog" , "cat": print("A mi me gustan mucho de esos")//casos compuestos
case "mouse" : print("🐭")
case "bird" : print("🐦‍⬛")
default: print("meh")
}

let grade = 9
switch grade {
case ...5 : print("failed")
case 6..<9 : print("Meh")
case 10: print("WOW")
default: print(":v")
}

let color = (1,2,255)
switch color {
case (_,_,255): print("max blue")
    fallthrough // forza caer en el otro case
case (_,255,_): print("max green")
default: break
}
*/
/*
let color = (1,2,255)
switch color {
    // value binding
case (let r,let g,255): print("max blue \(r), green: \(g)")
    fallthrough // forza caer en el otro case
case (_,255,_): print("max green")
default: break
}
*/
/*
let color = (1,2,255)
switch color {
case (255, let g, let b) where g < 255:
    print("max red with green \(g) and blue \(b)")
case (let r , let g , 255):
*/
let coordenada = (3,5)
switch coordenada{
case (let a,let b) where a>0 && b>0: print("primer cuadrante \(a) \(b)")
case(let a, let b) where a>0 && b<0: print("segundo cuadrante \(a) \(b)")
case(let a, let b) where a<0 && b<0: print("tercer cuadrante \(a) \(b)")
case(let a, let b) where a<0 && b>0: print("cuarto cuadrante \(a) \(b)")
case(let a, let b) where a==0 && b==0: print("esta en el origen \(a) \(b)")
default: break
}

