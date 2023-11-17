import UIKit
import UIKit

class Juego: UIViewController {
    
    @IBOutlet weak var labeljuego: UILabel!
    @IBOutlet weak var numrondas: UILabel!
    var switchopcion = true
    var rondaslabel = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        if(switchopcion){
            labeljuego.text = "Ronda"
            numrondas.isHidden = false
        }else{
            labeljuego.text = "Puntos"
        }
        
    }
}

