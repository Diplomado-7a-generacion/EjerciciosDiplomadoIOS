//
//  Informacion.swift
//  PiedraPapelOTijera
//
//  Created by Diplomado on 17/10/23.
//

import Foundation
import UIKit

class Informacion: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Crea un UILabel
        let paragraphLabel = UILabel()
        
        // Configura el número de líneas a 0 para permitir múltiples líneas
        paragraphLabel.numberOfLines = 0
        
        // Configura el texto del párrafo
        paragraphLabel.text = "El juego de Piedra, Papel o Tijera es un juego simple y popular en el que dos personas compiten para ver quién gana cada ronda. Las reglas son las siguientes: Los jugadores eligen una de las tres opciones: piedra, papel o tijera. La piedra vence a las tijeras (la piedra rompe las tijeras). Las tijeras vencen al papel (las tijeras cortan el papel). El papel vence a la piedra (el papel envuelve la piedra). Entonces, el resultado de una ronda se determina según las interacciones anteriores: piedra vence a tijeras, tijeras vencen a papel y papel vence a piedra. Si ambos jugadores eligen la misma opción, la ronda se considera un empate y generalmente se juega otra ronda. El juego es generalmente utilizado como una forma de tomar decisiones de manera aleatoria o simplemente para divertirse en un contexto informal."
        
        // Configura el tamaño y la posición del UILabel
        paragraphLabel.frame = CGRect(x: 20, y: 100, width: 300, height: 500)
        
        // Ajusta la alineación del texto (opcional)
        paragraphLabel.textAlignment = .left
        
        // Añade el UILabel a la vista principal
        view.addSubview(paragraphLabel)
    }
}

