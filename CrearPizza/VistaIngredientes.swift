//
//  VistaIngredientes.swift
//  CrearPizza
//
//  Created by Isaias Varela on 14/02/16.
//  Copyright © 2016 Isaias Varela. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController {
    
    var sigQueso2 :String = " "
    var sigMasa3  :String = " "
    var sigtamanio4 :String = " "
    
    @IBOutlet weak var ingrediente1: UILabel!
    @IBOutlet weak var ingrediente2: UILabel!
    @IBOutlet weak var ingrediente3: UILabel!
    @IBOutlet weak var ingrediente4: UILabel!
    @IBOutlet weak var ingrediente5: UILabel!

    @IBOutlet weak var lblAdvertencia: UILabel!

    @IBOutlet weak var btnConfirmar: UIButton!
    
    @IBOutlet weak var btnPina: UIButton!
    @IBOutlet weak var btnPavo: UIButton!
    @IBOutlet weak var btnJamon: UIButton!
    @IBOutlet weak var btnCebolla: UIButton!
    @IBOutlet weak var btnPimiento: UIButton!
    @IBOutlet weak var btnAceituna: UIButton!
    @IBOutlet weak var btnSalchicha: UIButton!
    @IBOutlet weak var btnPepperoni: UIButton!
    
    
    @IBOutlet weak var lblQueso2: UILabel!
    @IBOutlet weak var lblMasa3: UILabel!
    @IBOutlet weak var lblTamanioEnIngredientes: UILabel!
    
    
    override func viewWillAppear(animated: Bool) {
        lblQueso2.text = sigQueso2
        lblMasa3.text = sigMasa3
        lblTamanioEnIngredientes.text = sigtamanio4
        
        lblQueso2.hidden = true
        lblMasa3.hidden = true
        lblTamanioEnIngredientes.hidden = true
    }

    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var sigIngredientes :String = "Ingredientes : " + self.ingrediente1.text!
        let sigQueso :String = "Queso : " + self.lblQueso2.text!
        
        if self.ingrediente2.text != "-" {
            sigIngredientes = sigIngredientes + " - " + self.ingrediente2.text!
        }
        if self.ingrediente3.text != "-" {
            sigIngredientes = sigIngredientes + " - " + self.ingrediente3.text!
        }
        if self.ingrediente4.text != "-" {
            sigIngredientes = sigIngredientes + " - " + self.ingrediente4.text!
        }
        if self.ingrediente5.text != "-" {
            sigIngredientes = sigIngredientes + " - " + self.ingrediente5.text!
        }
        
        let sigvista = segue.destinationViewController as! VistaConfirmacion
        sigvista.sigIngredientes1 = sigIngredientes
        sigvista.sigQueso1 = sigQueso
        sigvista.sigMasa1 = "Masa: " + sigMasa3
        sigvista.sigTamanio1 = sigtamanio4
    }

    
    @IBAction func addJamon(sender: UIButton) {

        
        if cargaIngrediente("JAMON") == true {
            sender.enabled = false;
        }
        if btnConfirmar.enabled == false {
            btnConfirmar.enabled = true
        }
    }
    
    @IBAction func addCebolla(sender: UIButton) {
        if cargaIngrediente("CEBOLLA") == true {
            sender.enabled = false;
        }
        if btnConfirmar.enabled == false {
            btnConfirmar.enabled = true
        }

    }
    
    @IBAction func addPavo(sender: UIButton) {
        if cargaIngrediente("PAVO") == true {
        sender.enabled = false;
        }
        if btnConfirmar.enabled == false {
            btnConfirmar.enabled = true
        }

    }
    
    @IBAction func addPina(sender: UIButton) {
        if cargaIngrediente("PIÑA") == true {
        sender.enabled = false;
        }
        if btnConfirmar.enabled == false {
            btnConfirmar.enabled = true
        }
    }
    
    @IBAction func addAceituna(sender: UIButton) {
        if cargaIngrediente("ACEITUNA") == true{
        sender.enabled = false;
        }
        if btnConfirmar.enabled == false {
            btnConfirmar.enabled = true
        }

    }
    
    @IBAction func addPepperoni(sender: UIButton) {
        if cargaIngrediente("PEPPERONI") == true{
        sender.enabled = false;
        }
        if btnConfirmar.enabled == false {
            btnConfirmar.enabled = true
        }

    }
    
    @IBAction func addPimiento(sender: UIButton) {
        if cargaIngrediente("PIMIENTO") == true {
        sender.enabled = false;
        }
        if btnConfirmar.enabled == false {
            btnConfirmar.enabled = true
        }

    }
    
    @IBAction func addSalchicha(sender: UIButton) {
        if cargaIngrediente("SALCHICHA") == true {
        sender.enabled = false;
        }
        if btnConfirmar.enabled == false {
            btnConfirmar.enabled = true
        }

    }
    

    
    func cargaIngrediente(Ingrediente:String) -> Bool{
        var bandera :Bool = false;
        var contador :Int = 0;


        if self.ingrediente1.text == "-" && bandera == false && contador < 5 {
            self.ingrediente1.text = Ingrediente;
            bandera = true;
        }else{contador = contador+1
        }
        if self.ingrediente2.text == "-" && bandera == false && contador < 5{
            self.ingrediente2.text = Ingrediente;
            bandera = true;
        }else{contador = contador+1
        }
        if self.ingrediente3.text == "-" && bandera == false && contador < 5{
            self.ingrediente3.text = Ingrediente;
            bandera = true;
        }else{contador = contador+1
        }
        if self.ingrediente4.text == "-" && bandera == false && contador < 5{
            self.ingrediente4.text = Ingrediente;
            bandera = true;
        }else{contador = contador+1
        }
        if self.ingrediente5.text == "-" && bandera == false && contador < 5{
            self.ingrediente5.text = Ingrediente;
            bandera = true;
        }else{contador = contador+1
        }
        
        if contador >= 5 {
            self.lblAdvertencia.text = "Has seleccionado el maximo de ingredientes";
            bandera = false;
        }

        return bandera
        
    }
    
    
    
    
    
    @IBAction func limpiarSeleccionar(sender: UIButton) {
        
        self.ingrediente1.text = "-"
        self.ingrediente2.text = "-"
        self.ingrediente3.text = "-"
        self.ingrediente4.text = "-"
        self.ingrediente5.text = "-"

        if btnConfirmar.enabled == true {
            btnConfirmar.enabled = false
        }

        
        if self.btnPina.enabled == false {
            self.btnPina.enabled=true}
        if self.btnAceituna.enabled == false {
            self.btnAceituna.enabled=true}
        if self.btnCebolla.enabled == false {
            self.btnCebolla.enabled=true}
        if self.btnJamon.enabled == false {
            self.btnJamon.enabled=true}
        if self.btnPavo.enabled == false {
            self.btnPavo.enabled=true}
        if self.btnPepperoni.enabled == false {
            self.btnPepperoni.enabled=true}
        if self.btnSalchicha.enabled == false {
            self.btnSalchicha.enabled=true}
        if self.btnPimiento.enabled == false {
            self.btnPimiento.enabled=true}
        
        self.lblAdvertencia.text = ""
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
