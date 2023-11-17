import UIKit
// usamos el playground pra probar pedazos de código sin necesidad de tener un
// codigo completo

// variables
var variable = "Hello, playground"
//constantes
let constante = "Hola de nuevo"
// podemos declarar varias variables y constates al mismo tiempo
var n1=3, n2=3
// caracteres y cadenas de caracteres son strings

//inferencia de tipo
//Entero
//Double
//String
//Booleano
var doble = 3.8
var booleano = true
//lowcammelCase
// dos puntos para especifircar el tipo de dato
var miEntero: Int = 1
var midoble: Double = 3.0
var mistring: String = "hola"
var mibooleano : Bool = true
// sin definir ningun valor aun#
var misegundoEntero : Int

// ejemplo de sumas

var numerouno = 0.1
var numerodos = 0.2
print(numerouno+numerodos)

// operadores

numerouno - numerodos
numerouno + numerodos
numerouno * numerodos
numerouno > numerodos
numerouno < numerodos
numerouno <= numerodos
numerouno >= numerodos
numerouno == numerodos
numerouno != numerodos
numerouno += numerodos
numerouno -= numerodos

// Interpolacion

var mistring1 : String = "Ana "
var mistring2 : String = "Paus"
mistring1+mistring2
var edad = 25
//caracter de escape para concatenar
//opcion y signo de interrogacion
"Hola soy pau y tengo  \(edad)"

// arreglos

var array = [1,2,3,4]
var array2 = ["Ana ", "Pau"]
var arrayTres : [String] = ["Ana ", "Pau"]
array[3]
array.append(3)
array+=[1,2,3,4]

// sets colecciones no ordenadas y no permite valores repetidos

var miset: Set <String> = ["Ana", "Pau"]
miset.insert("Flowers")
miset.contains("Ana")

//diccionarios valor con llave
// dentro de un diccionario deben seguir la secuencia que fue declarada
// string : string o string:int etc
var miDiccionario : [String:String] = [:]
var miDiccionarioDos = ["Nombre":"Grecia","Edad" : "18"]
//dandole otro valor
miDiccionarioDos ["Colorfavorito"] = "Rojo"
miDiccionarioDos
miDiccionarioDos["Nombre"]
// tuplas
var coloruno = "rojo"
var codigo = "0#fff"
var color = ("rojo","0#fff")
color.0
color.1
var alumno = ("dante sanchez ",8)
alumno.0
alumno.1
var alumnoDos = (Nombre: "Pau", Edad: 8)
alumnoDos.Nombre
alumnoDos.Edad
