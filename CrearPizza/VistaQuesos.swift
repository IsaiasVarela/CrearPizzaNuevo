//
//  VistaQuesos.swift
//  CrearPizza
//
//  Created by Isaias Varela on 14/02/16.
//  Copyright © 2016 Isaias Varela. All rights reserved.
//

import UIKit

class VistaQuesos: UIViewController {

    var sigMasas2 : String = " "
    var sigTamanio3 : String = " "
    
    @IBOutlet weak var quesoSeleccionado: UILabel!

    @IBOutlet weak var lblMasas2: UILabel!
    @IBOutlet weak var lblTamanioEnQuesos: UILabel!

    
    @IBAction func selMozarela(sender: UIButton) {
        self.quesoSeleccionado.text="MOZARELA";
    }
    
    @IBAction func selCheddar(sender: UIButton) {
        self.quesoSeleccionado.text="CHEDDAR";
    }
    
    @IBAction func selParmesano(sender: UIButton) {
        self.quesoSeleccionado.text="PARMESANO";
    }
    
    @IBAction func selSinQueso(sender: UIButton) {
        self.quesoSeleccionado.text="SIN QUESO";
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
        lblMasas2.text = sigMasas2
        lblTamanioEnQuesos.text = sigTamanio3

    lblMasas2.hidden = true
    lblTamanioEnQuesos.hidden = true
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigVistaIngredientes = segue.destinationViewController as! VistaIngredientes

        let sigQueso3 :String = quesoSeleccionado.text!
        
        sigVistaIngredientes.sigQueso2 = sigQueso3
        sigVistaIngredientes.sigMasa3 = sigMasas2
        sigVistaIngredientes.sigtamanio4 = sigTamanio3
        
        
        // "Queso: " + self.quesoSeleccionado.text!
        
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
