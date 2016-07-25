//
//  VistaFinal.swift
//  tareaPizza
//
//  Created by XrgerX on 24/07/16.
//  Copyright © 2016 XrgerX. All rights reserved.
//

import UIKit

class VistaFinal: UIViewController, UIAlertViewDelegate {

    @IBOutlet weak var vistaTamPizza: UILabel!
    @IBOutlet weak var vistaTipMasa: UILabel!
    @IBOutlet weak var vistaTipQueso: UILabel!
    @IBOutlet weak var vistaIngredTodos: UITextView!
    
    var indiceTamPizza: String = ""
    var indiceTipMasa: String = ""
    var indiceTipQueso: String = ""
    var indiceIngredientes: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vistaTamPizza.text = indiceTamPizza
        vistaTipMasa.text = indiceTipMasa
        vistaTipQueso.text = indiceTipQueso
        vistaIngredTodos.text = indiceIngredientes
        // Do any additional setup after loading the view.
    }

    @IBAction func AlertaFinal(sender: AnyObject) {
        let alerta = UIAlertView(title: "MENSAJE", message: "SU PEDIDO SE ENTREGO A LA COCINA", delegate: nil, cancelButtonTitle: "ACEPTAR")
        alerta.show()

    }
  

}
