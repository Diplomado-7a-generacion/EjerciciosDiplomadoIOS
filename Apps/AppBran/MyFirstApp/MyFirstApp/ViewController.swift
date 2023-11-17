//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Diplomado on 22/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nextButtonTapped: UIButton!
    
    @IBOutlet weak var photoTypeSwitch: UISwitch!
    @IBOutlet weak var titleTypeSwitch: UISwitch!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var textFieldViewController: UITextField!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var titleTextField: UITextField!{
        didSet {
            titleTextField.delegate = self
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        //Es el que nos manda a otro viewcontroller
        if let destinationViewController = segue.destination as? ImageStackViewController{
        destinationViewController.showCat = photoTypeSwitch.isOn
            destinationViewController.title = titleTextField.text
        }else{
            segue.destination.title = "Info"
        }
    }
    
    
    @IBAction func photoTypeSwitchValueChanged(_ sender: UISwitch) {
        sender.isOn ? nextButton.setTitle("Cats", for: .normal) : nextButton.setTitle("Dogs", for: .normal)
    }
    
    @IBAction func titleTypeSwitchChanged(_ sender: UISwitch) {
        
        titleLabel.text = sender.isOn ? "" : "Custom title not selected"
    }
    
    @IBAction func tileTextFieldEditingChanged(_ sender: UITextField) {
        titleLabel.text = sender.text
    }
    
    
    
    @IBAction func nextButtonTapped(_ sender: UIButton){
        print(photoTypeSwitch.isOn)
        if sender.tag == 0{
            performSegue(withIdentifier: "SegueFromIntoMain", sender: nil)
        }else{
            performSegue(withIdentifier: "OpenInfo", sender: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("1")
    }
    
    //Lista para ser mostrada
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        print("2")
//    }
//    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        print("3")
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        print("4")
//    }
//    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        print("5")
//    }

}

extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //No permite puntos
        if string == "" { return true }
        if string.rangeOfCharacter(from: .alphanumerics) == nil && string != " "{
            return false
        } else {
            return (textField.text?.count ?? 0) + string.count - range.length <= 10
        }
    }
}
