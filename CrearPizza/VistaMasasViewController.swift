//
//  VistaMasasViewController.swift
//  CrearPizza
//
//  Created by Isaias Varela on 14/02/16.
//  Copyright © 2016 Isaias Varela. All rights reserved.
//

import UIKit

class VistaMasasViewController: UIViewController {

    var sigTamanio2 :String = " "
    
    @IBOutlet weak var Seleccion1: UILabel!
    
    @IBOutlet weak var masaSeleccionada: UILabel!
    
    @IBOutlet weak var tamanio2: UILabel!
    
    
    @IBAction func selMasaDelgada(sender: UIButton) {
        self.masaSeleccionada.text="DELGADA";
    }
    
    @IBAction func selMasaCrujiente(sender: UIButton) {
        self.masaSeleccionada.text="CRUJIENTE";
    }
    
    @IBAction func selMasaGruesa(sender: UIButton) {
        self.masaSeleccionada.text="GRUESA";
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        tamanio2.text = sigTamanio2
        tamanio2.hidden = true
        
    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigVistaQuesos = segue.destinationViewController as! VistaQuesos
        
        let sigMasas1 :String = masaSeleccionada.text!
        let sigTamanio :String = tamanio2.text!
        
        
        sigVistaQuesos.sigMasas2 = sigMasas1
        sigVistaQuesos.sigTamanio3 = sigTamanio
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
