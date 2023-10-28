import UIKit

class Historial: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!

    var historialJuegos: [Int] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historialJuegos.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let juego = historialJuegos[indexPath.row]
        
        if juego == 0 {
            cell.textLabel?.text = "Juego \(indexPath.row + 1): Ganaste"
        } else if juego == 1 {
            cell.textLabel?.text = "Juego \(indexPath.row + 1): Empataste"
        } else if juego == 2 {
            cell.textLabel?.text = "Juego \(indexPath.row + 1): Perdiste"
        }
        return cell
    }

    // ...
}
