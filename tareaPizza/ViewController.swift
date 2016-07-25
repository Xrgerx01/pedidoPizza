//
//  ViewController.swift
//  tareaPizza
//
//  Created by XrgerX on 20/07/16.
//  Copyright © 2016 XrgerX. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var banner: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    var datos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        var imagenesBaner = ["pizza1.jpg","pizza2.jpg","pizza3.jpg","pizza4.jpg","pizza5.jpg"]
        var images = [UIImage]()
        for i in 0..<imagenesBaner.count{
            images.append(UIImage(named: imagenesBaner[i])!)
        }
        datos = ["PIZZA CHICA", "PIZZA MEDIANA", "PIZZA GRANDE"]
        
        tableView.reloadData()
        banner.animationImages = images
        banner.animationDuration = 8.0
        banner.startAnimating()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
      return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return datos.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCellWithIdentifier("MiCelda", forIndexPath: indexPath)
        let tamPizza = datos[indexPath.row]
        cell.textLabel?.text = tamPizza
        return cell
    }
    
   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resulTamano = tableView!.indexPathForSelectedRow!.row
        let sigVista = segue.destinationViewController as! VistaTipoMasa
        sigVista.indiceTam = String(resulTamano)
    }
    /*override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }*/


}

