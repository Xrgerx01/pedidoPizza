//
//  VistaTipoQueso.swift
//  tareaPizza
//
//  Created by XrgerX on 24/07/16.
//  Copyright © 2016 XrgerX. All rights reserved.
//

import UIKit

class VistaTipoQueso: UIViewController,  UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var vistaTamPizza: UILabel!
    @IBOutlet weak var vistaTipMasa: UILabel!
    @IBOutlet weak var tableView2: UITableView!
    
    var datos2: [String] = []
    var indiceTamPizza: String = ""
    var indiceTipMasa: String = ""
    
    
    override func viewWillAppear(animated: Bool) {
        switch indiceTipMasa
        {
        case "0": return vistaTipMasa.text = "MASA DELGADA"
        case "1": return vistaTipMasa.text = "MASA CRUJIENTE"
        case "2": return vistaTipMasa.text =  "MASA GRUESA"
        default: 0
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView2.delegate = self
        tableView2.dataSource = self
        datos2 = ["QUESO MOZARELA", "QUESO CHEDDAR", "QUESO PARMESANO", "SIN QUESO"]
        tableView2.reloadData()
        vistaTamPizza.text = indiceTamPizza        // Do any additional setup after loading the view.
    }

    func numberOfSectionsInTableView(tableView2: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView2: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datos2.count
    }
    
    func tableView(tableView2: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView2.dequeueReusableCellWithIdentifier("MiCelda2", forIndexPath: indexPath)
        let queso = datos2[indexPath.row]
        cell.textLabel?.text = queso
        return cell
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resulQueso = tableView2!.indexPathForSelectedRow!.row
        let menTPizza = self.vistaTamPizza.text!
        let menTMasa = self.vistaTipMasa.text!
        let sigVista2 = segue.destinationViewController as! VistaIngredientes
        sigVista2.indiceTipQueso = String(resulQueso)
        sigVista2.indiceTamPizza = String(menTPizza)
        sigVista2.indiceTipMasa = String(menTMasa)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
