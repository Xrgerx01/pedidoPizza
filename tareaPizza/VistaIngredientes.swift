//
//  VistaIngredientes.swift
//  tareaPizza
//
//  Created by XrgerX on 24/07/16.
//  Copyright © 2016 XrgerX. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController {

    @IBOutlet weak var vistaTipQueso: UILabel!
    @IBOutlet weak var vistaTamPizza: UILabel!
    @IBOutlet weak var vistaTipMasa: UILabel!
    var indiceTamPizza: String = ""
    var indiceTipMasa: String = ""
    var indiceTipQueso: String = ""
    var cantidad: Int = 0
    var banderaEncendida: Bool = false
    var ingredientes:String = ""
    
    @IBOutlet weak var PresionaJamon: chekbox!
    
    @IBOutlet weak var PresionaPeperoni: chekbox!
    @IBOutlet weak var PresionaPavo: chekbox!
    @IBOutlet weak var PresionaSalchi: chekbox!
    @IBOutlet weak var PresionaAceituna: chekbox!
    @IBOutlet weak var PresionaCebolla: chekbox!
    @IBOutlet weak var PresionaPimiento: chekbox!
    @IBOutlet weak var PresionaPina: chekbox!
    @IBOutlet weak var PresionaHuevo: chekbox!
    
    override func viewWillAppear(animated: Bool) {
        
        switch indiceTipQueso
        {
        case "0": return vistaTipQueso.text = "QUESO MOZARELA"
        case "1": return vistaTipQueso.text = "QUESO CHEDAR"
        case "2": return vistaTipQueso.text = "QUESO PARMESANO"
        case "3": return vistaTipQueso.text = "SIN QUESO"
        default: 0
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vistaTamPizza.text = indiceTamPizza
        vistaTipMasa.text = indiceTipMasa
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonJamon(sender: AnyObject) {
        banderaEncendida = PresionaJamon.isCheked
        if (banderaEncendida == true) {
            cantidad = cantidad + 1
        }
        else{
            cantidad = cantidad - 1
        }
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let menTPizza = self.vistaTamPizza.text!
        let menTMasa = self.vistaTipMasa.text!
        let resulQueso = self.vistaTipQueso.text!
        var ingredienteJamon: String = ""
        var ingredientePeperoni: String = ""
        var ingredientePavo: String = ""
        var ingredienteSalchi: String = ""
        var ingredienteAceituna: String = ""
        var ingredienteCebolla: String = ""
        var ingredientePimiento: String = ""
        var ingredientePina: String = ""
        var ingredienteHuevo: String = ""
        
        if PresionaJamon.isCheked  == true {
            ingredienteJamon = "JAMON, "
        }
        
        if PresionaPeperoni.isCheked  == true {
            ingredientePeperoni = "PEPPERONI, "
        }
        
        if PresionaPavo.isCheked  == true {
            ingredientePavo = "PAVO, "
        }
        
        if PresionaSalchi.isCheked  == true {
            ingredienteSalchi = "SALCHIPAPA, "
        }
        
        if PresionaAceituna.isCheked  == true {
            ingredienteAceituna = "ACEITUNA, "
        }
        
        if PresionaCebolla.isCheked  == true {
            ingredienteCebolla = "CEBOLLA, "
        }
        
        if PresionaPimiento.isCheked  == true {
            ingredientePimiento = "PIMIENTO, "
        }
        
        if PresionaPina.isCheked  == true {
            ingredientePina = "PIÑA, "
        }
        
        if PresionaHuevo.isCheked  == true {
            ingredienteHuevo = "HUEVO, "
        }
        
        ingredientes = ingredienteJamon + ingredientePeperoni + ingredientePavo + ingredienteSalchi + ingredienteAceituna + ingredienteCebolla + ingredientePimiento + ingredientePina + ingredienteHuevo
        
        let sigVista3 = segue.destinationViewController as! VistaFinal
        sigVista3.indiceTamPizza = String(menTPizza)
        sigVista3.indiceTipMasa = String(menTMasa)
        sigVista3.indiceTipQueso = String(resulQueso)
        sigVista3.indiceIngredientes = String(ingredientes)
    }

}
