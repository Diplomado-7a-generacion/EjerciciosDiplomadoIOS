import UIKit
//closures

let volunteerCounts = [1,3,40,32,2,53,77,13]
func isAscending(_ i: Int, _ j: Int) -> Bool {
   return i < j
}
let volunteeerSorted = volunteerCounts.sorted(by: isAscending)
print(volunteeerSorted)

//let volunteeerSorted = volunteerCounts.sorted(by: {i, j in i < j })
//print(volunteeerSorted)

// se hace  referencia al primer y segundo parametro
//let volunteeerSorted = volunteerCounts.sorted {$0 < $1}
//print(volunteeerSorted)
//
//func doAwesomeWork(on input: String,
//                   using transformer: () -> Void,
//                   then completion: () -> Void){
//}
//doAwesomeWork(on: "Diplomado"){
//
//}then: {
//}
//// tambien se puede hacer asi
//doAwesomeWork(on: "Diplomado", using:{}, then: {})

//let volnteerAverage = [2.3,4.6,2.1]
//func format(numbers: Double,
//            using formatter: (Double) -> String) -> [String]{
//    var result = [String]()
//
//    for number in numbers {
//        let transformedNumber = formatter(number)
//        result.append(transformedNumber)
//    }
//    return result
//}

//func rounder(_ number: Double) -> String{
//    let roundedNumber: Int = Int(number)
//    return "\(roundedNumber)"
//}
//let formatterAverageVolunteers = format(numbers: volunteerAverages, using: rounder)
//print(volnteerAverage)
//print(formatterAverageVolunteers)

//let volunteerCounts: [Int] = [1,2,3,4,5,6,78,9]
//let volunteerAverages: [Double] = [10.75,4.2,1.5,12.12]
//
//// map
//let roundedVolunteers = volunteerAverages.map{ number in
//    return Int(number)
//}
//print(roundedVolunteers)

//filter
//let passingVolunteers = volunteerCounts.filter{
//   number in return number >= 10
//}
//print(passingVolunteers)
//
//reduce
let totalvolunteers = volunteerCounts.reduce(0) {partialResult,
    number in
    return partialResult + number
}
print(totalvolunteers)

//let finalVolunteerDescription = passingVolunteers.reduce("The volunteers were ") { partialResult, number in return partialResult + "\(number)"}
//print(finalVolunteerDescription)
