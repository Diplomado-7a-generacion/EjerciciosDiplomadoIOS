//
//  ImageStackViewController.swift
//  MyFirstApp
//
//  Created by Diplomado on 29/09/23.
//

import UIKit
class ImageStackViewController: UIViewController {
    var showCat = false
    
    @IBOutlet weak var uno: UIImageView!
    @IBOutlet weak var tercerimageview: UIImageView!
    @IBOutlet weak var secondimageview: UIImageView!
    @IBOutlet weak var firstImageView: UIImageView!
    
    @IBAction func `switch`(_ sender: Any) {
    }
    // aqui va el switch
    @IBOutlet weak var photoTypeSwitch: UISwitch!
    @IBAction func switchone(_ sender: Any) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationViewController = segue.destination as? ImageStackViewController else{ return }
        destinationViewController.showCat = photoTypeSwitch.isOn
    }
    // estados de los botones
    
    override func viewDidLoad() {

        super.viewDidLoad()
        if showCat{
            firstImageView.image = UIImage(named: "cat-1")
            secondimageview.image = UIImage(named: "cat-2")
            tercerimageview.image = UIImage(named: "cat-3")
            uno.image = UIImage(named: "dog-1")
        } else{
            firstImageView.image = UIImage(named: "dog-1")
            secondimageview.image = UIImage(named: "dog-2")
            tercerimageview.image = UIImage(named: "dog-3")
            uno.image = UIImage(named: "dog-1")
        }
    }
}
