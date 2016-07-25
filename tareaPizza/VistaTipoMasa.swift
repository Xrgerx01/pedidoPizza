//
//  VistaResultado.swift
//  calculadoraIMC
//
//  Created by XrgerX on 17/07/16.
//  Copyright © 2016 XrgerX. All rights reserved.
//

import UIKit

class VistaTipoMasa: UIViewController,  UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var resultadoTamano: UILabel!
    @IBOutlet weak var tableView1: UITableView!
    var indiceTam: String = ""
    var datos1: [String] = []
    
    override func viewWillAppear(animated: Bool) {
        switch indiceTam
        {
        case "0": return resultadoTamano.text = "PIZZA CHICA"
        case "1": return resultadoTamano.text = "PIZZA MEDIANA"
        case "2": return resultadoTamano.text =  "PIZZA GRANDE"
        default: 0
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView1.delegate = self
        tableView1.dataSource = self
        datos1 = ["MASA DELGADA", "MASA CRUJIENTE", "MASA GRUESA"]
        tableView1.reloadData()
        // Do any additional setup after loading the view.
    }
    
    func numberOfSectionsInTableView(tableView1: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView1: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datos1.count
    }
    
    func tableView(tableView1: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView1.dequeueReusableCellWithIdentifier("MiCelda1", forIndexPath: indexPath)
        let masa = datos1[indexPath.row]
        cell.textLabel?.text = masa
        return cell
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resulMasa = tableView1!.indexPathForSelectedRow!.row
        let menTPizza = self.resultadoTamano.text!
        let sigVista1 = segue.destinationViewController as! VistaTipoQueso
        sigVista1.indiceTipMasa = String(resulMasa)
        sigVista1.indiceTamPizza = String(menTPizza)
    }
    
}