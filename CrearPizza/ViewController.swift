//
//  ViewController.swift
//  CrearPizza
//
//  Created by Isaias Varela on 14/02/16.
//  Copyright © 2016 Isaias Varela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var lblTamañoPizza: UILabel!
    
    @IBAction func btnPizzaChica(sender: UIButton) {
    
        self.lblTamañoPizza.text = "CHICA";
    
    }
    
    @IBAction func btnPizzaMediana(sender: UIButton) {
        self.lblTamañoPizza.text = "MEDIANA";

    
    }
    
    @IBAction func btnPizzaGrande(sender: AnyObject) {
        self.lblTamañoPizza.text = "GRANDE";

    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigVistaMasas = segue.destinationViewController as! VistaMasasViewController
        
        let tamanio3 :String = lblTamañoPizza.text!
        
        sigVistaMasas.sigTamanio2 = tamanio3
    }
    
    
}

