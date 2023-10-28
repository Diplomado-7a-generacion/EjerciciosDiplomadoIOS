import UIKit

class Juego: UIViewController {
    
    @IBOutlet weak var TextFieldNombre: UILabel!
    @IBOutlet weak var botonHistorial: UIButton!
    @IBOutlet weak var tuspuntoslabel: UILabel!
//    @IBOutlet weak var scorelabel: UILabel!
    @IBOutlet weak var Incremento: UILabel!
    @IBOutlet weak var WinnerLabel: UILabel!
    @IBOutlet weak var opponentSelectionLabel: UILabel!
    @IBOutlet weak var yourselectionLabel: UILabel!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var rockButon: UIButton!
    @IBOutlet weak var labeljuego: UILabel!
    @IBOutlet weak var NextTurnButton: UIButton!
    @IBOutlet weak var ResetButton: UIButton!
    //nombre
    var nombre = ""
    // MARK: POR RONDAS
    var switchopcion = true
    var rondaslabel = 0 // numero de rondas
    var contadorDeRondas = 0
    // MARK: POR PUNTOS
    var textfieldpuntos = 0
    var textfieldganador = 0
    var textfieldperdedor = 0
    var contadorganar = 0
    // MARK: PARA EL XIB
    var historialJuegos: [Int] = []
    // MARK: PARA EL XIB

    // MARK: FIN PARA EL XIB
    override func viewDidLoad() {
        super.viewDidLoad()
        TextFieldNombre.text = nombre
        applyShadowAndCornerRadiusTo(button: paperButton)
        applyShadowAndCornerRadiusTo(button: rockButon)
        applyShadowAndCornerRadiusTo(button: scissorsButton)
        // MARK: Label de tipo de juego
        if(switchopcion){
            labeljuego.text = "Ronda"
            
        }else{
            labeljuego.text = "Puntos"
        }
    }

    func applyShadowAndCornerRadiusTo(button: UIButton){
        button.layer.cornerRadius = 15
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.2
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
    }
    // MARK: OPCION PIEDA
    @IBAction func piedra(_ sender: UIButton) {
        if let selection = sender.titleLabel?.text {
            yourselectionLabel.text = selection
            //
            let opponentChoices: [String] = ["✊🏻"]
            let opChoice = opponentChoices.randomElement() ?? "🤖"
            opponentSelectionLabel.text = opChoice
            NextTurnButton.isHidden = false
            rockButon.isHidden = true
            paperButton.isHidden = true
            scissorsButton.isHidden = true
            
            let winner = getWinnerWith(choice: selection)
            WinnerLabel.text = winner
        }
    }
        
    //MARK: OPCION PAPEL
    @IBAction func papel(_ sender: UIButton) {
        
        if let selection = sender.titleLabel?.text {
            yourselectionLabel.text = selection
            //
            let opponentChoices: [String] = ["✋🏻"]
            let opChoice = opponentChoices.randomElement() ?? "🤖"
            opponentSelectionLabel.text = opChoice
            NextTurnButton.isHidden = false
            rockButon.isHidden = true
            paperButton.isHidden = true
            scissorsButton.isHidden = true
            
            let winner = getWinnerWith(choice: selection)
            WinnerLabel.text = winner
        }
    }
    //MARK: OPCION TIJERA
    @IBAction func tijera(_ sender: UIButton) {
        
        if let selection = sender.titleLabel?.text {
            yourselectionLabel.text = selection
            //
            let opponentChoices: [String] = ["✌🏻"]
            let opChoice = opponentChoices.randomElement() ?? "🤖"
            opponentSelectionLabel.text = opChoice
            NextTurnButton.isHidden = false
            rockButon.isHidden = true
            paperButton.isHidden = true
            scissorsButton.isHidden = true
            
            let winner = getWinnerWith(choice: selection)
            WinnerLabel.text = winner
        }
    }
    @IBAction func BotonHistorial(_ sender: UIButton) {
        let viewControllerXIB = Historial(nibName:"Historial", bundle: nil)
        if let navegationControler = navigationController{
            viewControllerXIB.historialJuegos = historialJuegos
            navegationControler.pushViewController(viewControllerXIB, animated: true)
        }else{
            print("No existe navegation Controler")
        }
    }
    //MARK: BOTON RESET
    @IBAction func Botondereset(_ sender: UIButton) {
        view.backgroundColor = UIColor.gray
        Incremento.text = "Incremento"
        yourselectionLabel.text = "🤔"
        opponentSelectionLabel.text = "🤖"
    }
    //MARK: BOTON NEXT TURN
    @IBAction func tappedNextTurn(_ sender: UIButton) {
        // hide play button
        sender.isHidden = true
        //show options
        rockButon.isHidden = false
        paperButton.isHidden = false
        scissorsButton.isHidden = false
        yourselectionLabel.text = "🤔"
        opponentSelectionLabel.text = "🤖"
        WinnerLabel.text = "The winner is..."
    }
    //MARK: ALERTA
    func alerta() {
        // Crear una instancia de UIAlertController
        let alertController = UIAlertController(title: "Ganador", message: "Ganaste!! \(nombre)", preferredStyle: .alert)

        // Crear una acción para el botón "Aceptar"
        let okAction = UIAlertAction(title: "Aceptar", style: .default) { (action) in
            // Código que se ejecutará cuando el usuario toque "Aceptar"
            print("El usuario tocó Aceptar")
            
            // Crear una instancia del controlador de vista personalizado
//            let historialViewController = Historial(nibName: "Historial", bundle: nil)
            
            // Presentar el controlador de vista
//            self.present(historialViewController, animated: true, completion: nil)
            
        }

        // Agregar la acción a la alerta
        alertController.addAction(okAction)

        // Presentar la alerta en la pantalla
        self.present(alertController, animated: true, completion: nil)
    }

    // MARK: ELIGIENDO GANADOR
    func getWinnerWith(choice: String) -> String{
        let opponentChoices: [String] = ["✊🏻","✋🏻","✌🏻"]
        let opChoice = opponentChoices.randomElement()
        
        // Actualiza la etiqueta opponentSelectionLabel con la elección del oponente
        if let opponentLabel = opponentSelectionLabel {
            opponentLabel.text = opChoice
        }
        opponentSelectionLabel.text = opChoice
        switch choice{
        case "✊🏻":
            switch opChoice{
            case "✊🏻":
                if(labeljuego.text == "Ronda"){
                    view.backgroundColor = UIColor.brown
                    historialJuegos.append(2)
                    return "Its a tie"
                }else{
                    historialJuegos.append(2)
                    return "Its a tie"
                }
            case "✌🏻":
                if(labeljuego.text == "Ronda"){
                                    if(contadorDeRondas != rondaslabel){
                                        contadorDeRondas += 1
                                        Incremento.text = String(contadorDeRondas)
                                    }
                                    else{
                                        alerta()
                                    }
                                    historialJuegos.append(1)
                                    view.backgroundColor = UIColor.green
                                    return "You win"
                                //MARK: PUNTOS WIN
                                }else{
                                    if(contadorDeRondas != textfieldpuntos){
                                        view.backgroundColor = UIColor.green
                                        contadorDeRondas += textfieldganador
                                        Incremento.text = String(contadorDeRondas)
                                    }else{
                                        historialJuegos.append(1)
                                        view.backgroundColor = UIColor.green
                                        alerta()
                                    }
                                }

            case "✋🏻":
                if(labeljuego.text == "Ronda"){
                    view.backgroundColor = UIColor.red
                    historialJuegos.append(0)
                    return "You lose"
                }else{
                    //MARK: PUNTOS LOSE
                    if(contadorDeRondas != textfieldpuntos){
                        if(contadorDeRondas > 0){
                            view.backgroundColor = UIColor.red
                            contadorDeRondas -= textfieldperdedor
                            Incremento.text = String(contadorDeRondas)
                            historialJuegos.append(0)
                            return "You lose"
                        }
                        view.backgroundColor = UIColor.red
                    }
                }
            default:
                return "No se encontró el elemento"
            }
        case "✌🏻":
            switch opChoice{
            case "✊🏻":
                if(labeljuego.text == "Ronda"){
                    view.backgroundColor = UIColor.red
                    historialJuegos.append(0)
                    return "You lose"
                }else{
                    //MARK: PUNTOS LOSE
                    if(contadorDeRondas != textfieldpuntos){
                        if(contadorDeRondas > 0){
                            view.backgroundColor = UIColor.red
                            contadorDeRondas -= textfieldperdedor
                            Incremento.text = String(contadorDeRondas)
                            historialJuegos.append(0)
                            return "You lose"
                        }
                        view.backgroundColor = UIColor.red
                    }
                }
            case "✌🏻":
                view.backgroundColor = UIColor.brown
                historialJuegos.append(2)
                return "It's a tie"
            case "✋🏻":
                if(labeljuego.text == "Ronda"){
                                    if(contadorDeRondas != rondaslabel){
                                        contadorDeRondas += 1
                                        Incremento.text = String(contadorDeRondas)
                                    }
                                    else{
                                        alerta()
                                    }
                                    historialJuegos.append(1)
                                    view.backgroundColor = UIColor.green
                                    return "You win"
                                //MARK: PUNTOS WIN
                                }else{
                                    if(contadorDeRondas != textfieldpuntos){
                                        view.backgroundColor = UIColor.green
                                        contadorDeRondas += textfieldganador
                                        Incremento.text = String(contadorDeRondas)
                                    }else{
                                        historialJuegos.append(1)
                                        view.backgroundColor = UIColor.green
                                        alerta()
                                    }
                                }

            default:
                return "No se encontró el elemento"
                
            }
        case "✋🏻":
            switch opChoice{
            case "✊🏻":
                if(labeljuego.text == "Ronda"){
                                    if(contadorDeRondas != rondaslabel){
                                        contadorDeRondas += 1
                                        Incremento.text = String(contadorDeRondas)
                                    }
                                    else{
                                        alerta()
                                    }
                                    historialJuegos.append(1)
                                    view.backgroundColor = UIColor.green
                                    return "You win"
                                //MARK: PUNTOS WIN
                                }else{
                                    if(contadorDeRondas != textfieldpuntos){
                                        view.backgroundColor = UIColor.green
                                        contadorDeRondas += textfieldganador
                                        Incremento.text = String(contadorDeRondas)
                                    }else{
                                        historialJuegos.append(1)
                                        view.backgroundColor = UIColor.green
                                        alerta()
                                    }
                                }

            case "✌🏻":
                if(labeljuego.text == "Rondas"){
                    view.backgroundColor = UIColor.red
                    historialJuegos.append(0)
                    return "You lose"
                }else{
                    //MARK: PUNTOS LOSE
                    if(contadorDeRondas != textfieldpuntos){
                        if(contadorDeRondas > 0){
                            view.backgroundColor = UIColor.red
                            contadorDeRondas -= textfieldperdedor
                            Incremento.text = String(contadorDeRondas)
                            historialJuegos.append(0)
                            return "You lose"
                        }
                        view.backgroundColor = UIColor.red
                    }
                }
            case "✋🏻":
                view.backgroundColor = UIColor.brown
                historialJuegos.append(2)
                return "It's a tie"
            default:
                return "No se encontró el elemento"
                
            }
            
        default:
            return "No se encontro elemento"
        }
        return ""

        }


    }

