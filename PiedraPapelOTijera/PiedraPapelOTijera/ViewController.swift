import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TextFieldScore: UITextField!
    @IBOutlet weak var TextFieldLose: UITextField!
    @IBOutlet weak var TextfieldWin: UITextField!
    @IBOutlet weak var TextFieldName: UITextField!
    @IBOutlet weak var labelmodojuego: UILabel!
    @IBOutlet weak var SwitchOptions: UISwitch!
    @IBOutlet weak var BotonContinuar: UIButton!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Es el que nos manda a otro viewcontroller
        if segue.identifier == "continuar"{
            let destino = segue.destination as? Juego
            destino?.switchopcion = SwitchOptions.isOn
            
            
            if segue.identifier == "continuar"{
                let destino = segue.destination as? Juego
                destino?.rondaslabel = valueLabel.text!
            }
        }
    }
    
    let slider: UISlider = {
        let slider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    let valueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let textFieldUno: UITextField = {
        let textfieldUno = UITextField()
        textfieldUno.translatesAutoresizingMaskIntoConstraints = false
        return textfieldUno
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let labelmodojuego = labelmodojuego else{
            return
        }
        // Configura la posición y tamaño del slider
        view.addSubview(slider)
        NSLayoutConstraint.activate([
            slider.topAnchor.constraint(equalTo: labelmodojuego.bottomAnchor, constant: 50),
            slider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            slider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
        
        // Configura el valor inicial de la etiqueta
        view.addSubview(valueLabel)
        valueLabel.text = "1"
        NSLayoutConstraint.activate([
            valueLabel.topAnchor.constraint(equalTo: slider.bottomAnchor, constant: 10),
            valueLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        view.addSubview(textFieldUno)
        NSLayoutConstraint.activate([
            textFieldUno.topAnchor.constraint(equalTo: labelmodojuego.bottomAnchor, constant: 80),
            textFieldUno.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textFieldUno.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
        
        TextfieldWin.isHidden = true
        TextFieldLose.isHidden = true
        TextFieldScore.isHidden = true
        BotonContinuar.isHidden = true
        // Configura el rango del slider (1 a 5)
        slider.minimumValue = 1
        slider.maximumValue = 5
        slider.value = 1
        
        // Agrega un evento para manejar cambios en el slider
        slider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
    }
    
    @IBAction func TitleLabelOfSwitch(_ sender: UISwitch) {
        labelmodojuego.text = sender.isOn ? "Ronda" : "Puntos"
        slider.isHidden = false
        valueLabel.isHidden = sender.isOn
        textFieldUno.isHidden = sender.isOn
        TextfieldWin.isHidden = sender.isOn
        TextFieldLose.isHidden = sender.isOn
        TextFieldScore.isHidden = sender.isOn
        
        if labelmodojuego.text == "Puntos" {
            TextfieldWin.isHidden = false
            TextFieldLose.isHidden = false
            TextFieldScore.isHidden = false
            slider.isHidden = true
            valueLabel.isHidden = true

        }
        else {
            TextfieldWin.isHidden = true
            TextFieldLose.isHidden = true
            TextFieldScore.isHidden = true
            valueLabel.isHidden = false
        }
        
    }
    
    @IBAction func TextFieldName(_ sender: UITextField) {
        OcultarbotonRondas()
        
    }
    @IBAction func BotonContinuar(_ sender: Any) {
        //verificarTextfield()
    }
    @IBAction func TextfieldWin(_ sender: Any) {
        OcultarbotonPuntos()
        
    }
    
    @IBAction func TextFieldLose(_ sender: Any) {
        OcultarbotonPuntos()
    }
    
    @IBAction func TextFieldScore(_ sender: Any) {
        OcultarbotonPuntos()
    }
    
    @IBAction func OcultarTextFiled(_ sender: UISwitch) {
        //        if labelmodojuego.text == "Puntos" {
        //               TextfieldWin.isHidden = !sender.isOn
        //           }
        //           else {
        //               TextfieldWin.isHidden = true
        //           }
        
    }
    func OcultarbotonPuntos(){
        if labelmodojuego.text == "Puntos" {
            if TextfieldWin.text == "" && TextFieldName.text == "" &&
                TextFieldLose.text == "" &&
                TextFieldScore.text == ""{
                
                BotonContinuar.isHidden = true
                
            }else {
             
                    BotonContinuar.isHidden = false
                
            }
            
        }
    }
        
        func OcultarbotonRondas(){
            if TextFieldName.text == ""
            {
                BotonContinuar.isHidden = true
            }else{
                if SwitchOptions.isOn{
                    BotonContinuar.isHidden = false
                }
            }
        }
        
        @objc func sliderValueChanged(_ sender: UISlider) {
            let selectedValue = Int(sender.value)
            valueLabel.text = "\(selectedValue)"
        }
    }


