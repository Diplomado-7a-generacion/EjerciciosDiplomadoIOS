let coordenada = (3,5)
switch coordenada{
case (let a,let b) where a>0 && b>0: print("primer cuadrante \(a) \(b)")
case(let a, let b) where a>0 && b<0: print("segundo cuadrante \(a) \(b)")
case(let a, let b) where a<0 && b<0: print("tercer cuadrante \(a) \(b)")
case(let a, let b) where a<0 && b>0: print("cuarto cuadrante \(a) \(b)")
case(let a, let b) where a==0 && b==0: print("esta en el origen \(a) \(b)")
default: break
}
