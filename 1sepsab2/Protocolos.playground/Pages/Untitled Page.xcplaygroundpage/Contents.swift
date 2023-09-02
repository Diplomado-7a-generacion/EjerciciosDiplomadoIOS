import Foundation

//// Protocolos
protocol TabularDataSource {
    var numberOfRows: Int { get }
    var numberOfColumns: Int { get }

    func label(forColumn column: Int) -> String
    func itemFor(row: Int, column: Int) -> String
}

func printTable(_ dataSource: TabularDataSource ) {
    var headerRow = "|"
    var columnWidths = [Int]()

    for index in 0..<dataSource.numberOfColumns {
        let columnLabel = dataSource.label(forColumn: index)
        let columnHeader = "\(columnLabel) |"
        headerRow += columnHeader
        columnWidths.append(columnLabel.count)
    }

    print(headerRow)

    for index in 0..<dataSource.numberOfRows {
        // Start output string
        var output = "|"
        // row = ["name", "age", "age of experience"]
        for columnIndex in 0..<dataSource.numberOfColumns {
            let item = dataSource.itemFor(row: index, column: columnIndex)
            let paddingNeeded = columnWidths[columnIndex] - item.count
            let padding = repeatElement(" ", count: paddingNeeded).joined(separator: "")
            output += "\(padding)\(item) |"
        }

        print(output)
    }
}

struct Person {
    let name: String
    let age: Int
    let yearsOfExperience: Int
}

struct Department: TabularDataSource, CustomStringConvertible {
    var description: String{
        return "Departament : \(name)"
    }
    var people = [Person]()
    let name: String

    init(name: String) {
        self.name = name
    }

    mutating func add(_ person: Person) {
        people.append(person)
    }

    var numberOfRows: Int { people.count }
    var numberOfColumns: Int { 3 }

    func label(forColumn column: Int) -> String {
        let columnHeader: String
        switch column {
        case 0:
            columnHeader = "Employee name"
        case 1:
            columnHeader = "Age"
        case 2:
            columnHeader = "Years of experience"
        default: fatalError("Invalid column header index!")
        }
        return columnHeader
    }

    func itemFor(row: Int, column: Int) -> String {
        let person = people[row]

        switch column {
        case 0: return person.name
        case 1: return String(person.age)
        case 2: return String(person.yearsOfExperience)
        default: fatalError("Invalid column for person!")
        }
    }

}

var department = Department(name: "Engineering")
department.add(Person(name: "Eva", age: 30, yearsOfExperience: 6))
department.add(Person(name: "Saleh", age: 40, yearsOfExperience: 18))
department.add(Person(name: "Amit", age: 50, yearsOfExperience: 20))

printTable(department)

//protocol Student{
//    var accountNumber: Int {get}
//    var name : String{get}
//}
//// definir lo que tiene el estudiante para que tenga sentido
//// implementar el protocolo que son como interfaces
//struct EngineeringStudent : Student{
//    var accountNumber: Int
//    var name: String
//    let hasCalculator : Bool
//}
//struct MedicineStudent : Student{
//    var accountNumber: Int
//    var name: String
//    let hasLabCoat : Bool
//    
//}
//let engineeringStudent = EngineeringStudent(accountNumber: 2434, name: "pau", hasCalculator: true)
//let medicineStudent = MedicineStudent(accountNumber: 2323, name: "other", hasLabCoat: true)
//// solo podemos imorimir nombre y numero de cuenta porque son  los que contiene el protocolo
//func printStudentInformation(_ student: Student){
//    print("\(student.name) - \(student.accountNumber)")
//    if let medicineStudent = student as? MedicineStudent{
//        print(medicineStudent.hasLabCoat)
//    }
//    
//}
//
//printStudentInformation(engineeringStudent)
//printStudentInformation(medicineStudent)
