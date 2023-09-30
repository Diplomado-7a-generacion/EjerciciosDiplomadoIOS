//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Diplomado on 22/09/23.
//

import UIKit

class ViewController: UIViewController {
    // investigar detalladamente cada una de las funciones
    @IBOutlet weak var switchcambio: UISwitch!
    // ciclo de vida de view controler
    @IBOutlet weak var nextButtom: UIButton!
    @IBOutlet weak var photoTypeSwitch: UISwitch!
    @IBAction func nextButtonTapped(_ sender: UIButton){
        didset {
            titleTextFied.delegate = self
        }
    }
    @IBAction func photoTypeSwitchvalueChanged(_ sender: UISwitch){
        sender.isOn ? nextButtom.setTitle("Cats", for: .normal)
        : nextButtom.setTitle("Dogs", for: .normal)
    }
    @IBAction func titleTextFiedlEditingChanged(_ sender: UITextField)
    override func viewDidLoad() {
        super.viewDidLoad()
        print("1")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("2")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("3")
    }
    // cuando la pantalla va a desaparecer de la vista del usuario
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("4")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("5")
    }
    

}

extension ViewController: UITextFieldDelegate{
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool{
        if string == "" {return true}
        if string.rangeOfCharacter(from: .alphanumerics) == nil
            && string != " "{
            return false
        }else{
            return (textField.text?.count ?? 0) + string.count - range.length <= 10
        }
    }
}
