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
    var ingSelec : String = ""
    var contadorIngredientes :Int = 0
    
   
    @IBOutlet weak var SwitchPinia: UISwitch!
    @IBOutlet weak var SwitchPavo: UISwitch!
    @IBOutlet weak var SwitchJamon: UISwitch!
    @IBOutlet weak var SwitchCebolla: UISwitch!
    @IBOutlet weak var SwitchPimiento: UISwitch!
    @IBOutlet weak var SwitchAceituna: UISwitch!
    @IBOutlet weak var SwitchSalchicha: UISwitch!
    @IBOutlet weak var SwitchPepperoni: UISwitch!
   
    @IBOutlet weak var lblAdvertencia: UILabel!
    @IBOutlet weak var btnConfirmar: UIButton!
    
    @IBOutlet weak var lblQueso2: UILabel!
    @IBOutlet weak var lblMasa3: UILabel!
    @IBOutlet weak var lblTamanioEnIngredientes: UILabel!
    
 
    func agregarIngredientes() ->String {
        
        ingSelec = ""
        
        if SwitchPinia.on == true { ingSelec = ingSelec + " Piña, " }
        if SwitchPavo.on == true { ingSelec = ingSelec + " Pavo, " }
        if SwitchJamon.on == true { ingSelec = ingSelec + " Jamon, " }
        if SwitchCebolla.on == true { ingSelec = ingSelec + " Cebolla, " }
        if SwitchPimiento.on == true { ingSelec = ingSelec + " Pimiento, " }
        if SwitchAceituna.on == true { ingSelec = ingSelec + " Aceituna, "}
        if SwitchSalchicha.on == true { ingSelec = ingSelec + " Salchicha, " }
        if SwitchPepperoni.on == true { ingSelec = ingSelec + " Pepperoni, " }
      
        return ingSelec
    }

    
    @IBAction func addPinia(sender: AnyObject) {
        if SwitchPinia.on {
            btnConfirmar.enabled=true
            contadorIngredientes = contadorIngredientes + 1
            lblAdvertencia.text = ""
            
                if contadorIngredientes > 5 {
                SwitchPinia.setOn(false, animated: true)
                contadorIngredientes = contadorIngredientes - 1
                lblAdvertencia.text = "Solo puedes escoger hasta 5 ingredientes"
                }
        }else {
            contadorIngredientes = contadorIngredientes - 1
            lblAdvertencia.text = ""
            if contadorIngredientes == 0 {
                    btnConfirmar.enabled = false
                    lblAdvertencia.text = "Favor de seleccionar al menos 1 ingrediente "
            }
        }
    }
    
    
    @IBAction func addPavo(sender: AnyObject) {
        if SwitchPavo.on {
            btnConfirmar.enabled=true
            contadorIngredientes = contadorIngredientes + 1
            lblAdvertencia.text = ""
                if contadorIngredientes > 5 {
                SwitchPavo.setOn(false, animated: true)
                contadorIngredientes = contadorIngredientes - 1
                lblAdvertencia.text = "Solo puedes escoger hasta 5 ingredientes"
            }
        }else {
            contadorIngredientes = contadorIngredientes - 1
            lblAdvertencia.text = ""
            if contadorIngredientes == 0 {
                btnConfirmar.enabled = false
                lblAdvertencia.text = "Favor de seleccionar al menos 1 ingrediente "
            }
        }
    }


    @IBAction func addJamon(sender: AnyObject) {
        if SwitchJamon.on {
            btnConfirmar.enabled=true
            contadorIngredientes = contadorIngredientes + 1
            lblAdvertencia.text = ""
            if contadorIngredientes > 5 {
                SwitchJamon.setOn(false, animated: true)
                contadorIngredientes = contadorIngredientes - 1
                lblAdvertencia.text = "Solo puedes escoger hasta 5 ingredientes"
            }
        }else {
            contadorIngredientes = contadorIngredientes - 1
            lblAdvertencia.text = ""
            if contadorIngredientes == 0 {
                btnConfirmar.enabled = false
                lblAdvertencia.text = "Favor de seleccionar al menos 1 ingrediente "
            }
        }
    }

    @IBAction func addCebolla(sender: AnyObject) {
        if SwitchCebolla.on {
            btnConfirmar.enabled=true
            contadorIngredientes = contadorIngredientes + 1
            lblAdvertencia.text = ""
            if contadorIngredientes > 5 {
                SwitchCebolla.setOn(false, animated: true)
                contadorIngredientes = contadorIngredientes - 1
                lblAdvertencia.text = "Solo puedes escoger hasta 5 ingredientes"
            }
        }else {
            contadorIngredientes = contadorIngredientes - 1
            lblAdvertencia.text = ""
            if contadorIngredientes == 0 {
                btnConfirmar.enabled = false
                lblAdvertencia.text = "Favor de seleccionar al menos 1 ingrediente "
            }
        }

    }

    @IBAction func addPimiento(sender: AnyObject) {
        if SwitchPimiento.on {
            btnConfirmar.enabled=true
            contadorIngredientes = contadorIngredientes + 1
            lblAdvertencia.text = ""
            if contadorIngredientes > 5 {
                SwitchPimiento.setOn(false, animated: true)
                contadorIngredientes = contadorIngredientes - 1
                lblAdvertencia.text = "Solo puedes escoger hasta 5 ingredientes"
            }
        }else {
            contadorIngredientes = contadorIngredientes - 1
            lblAdvertencia.text = ""
            if contadorIngredientes == 0 {
                btnConfirmar.enabled = false
                lblAdvertencia.text = "Favor de seleccionar al menos 1 ingrediente "
            }
        }
    }
    
    @IBAction func addAceituna(sender: AnyObject) {
        if SwitchAceituna.on {
            btnConfirmar.enabled=true
            contadorIngredientes = contadorIngredientes + 1
            lblAdvertencia.text = ""
            if contadorIngredientes > 5 {
                SwitchAceituna.setOn(false, animated: true)
                contadorIngredientes = contadorIngredientes - 1
                lblAdvertencia.text = "Solo puedes escoger hasta 5 ingredientes"
            }
        }else {
            contadorIngredientes = contadorIngredientes - 1
            lblAdvertencia.text = ""
            if contadorIngredientes == 0 {
                btnConfirmar.enabled = false
                lblAdvertencia.text = "Favor de seleccionar al menos 1 ingrediente "
            }
        }
    }

    
    @IBAction func addSalchicha(sender: AnyObject) {
        if SwitchSalchicha.on {
            btnConfirmar.enabled=true
            contadorIngredientes = contadorIngredientes + 1
            lblAdvertencia.text = ""
            if contadorIngredientes > 5 {
                SwitchSalchicha.setOn(false, animated: true)
                contadorIngredientes = contadorIngredientes - 1
                lblAdvertencia.text = "Solo puedes escoger hasta 5 ingredientes"
            }
        }else {
            contadorIngredientes = contadorIngredientes - 1
            lblAdvertencia.text = ""
            if contadorIngredientes == 0 {
                btnConfirmar.enabled = false
                lblAdvertencia.text = "Favor de seleccionar al menos 1 ingrediente "
            }
        }
    }
    
    
    @IBAction func AddPepperoni(sender: AnyObject) {
        if SwitchPepperoni.on {
            btnConfirmar.enabled=true
            contadorIngredientes = contadorIngredientes + 1
            lblAdvertencia.text = ""
            if contadorIngredientes > 5 {
                SwitchPepperoni.setOn(false, animated: true)
                contadorIngredientes = contadorIngredientes - 1
                lblAdvertencia.text = "Solo puedes escoger hasta 5 ingredientes"
            }
        }else {
            contadorIngredientes = contadorIngredientes - 1
            lblAdvertencia.text = ""
            if contadorIngredientes == 0 {
                btnConfirmar.enabled = false
                lblAdvertencia.text = "Favor de seleccionar al menos 1 ingrediente "
            }
        }
    }
    
    
    
    override func viewWillAppear(animated: Bool) {
        lblQueso2.text = sigQueso2
        lblMasa3.text = sigMasa3
        lblTamanioEnIngredientes.text = sigtamanio4
        
        lblQueso2.hidden = true
        lblMasa3.hidden = true
        lblTamanioEnIngredientes.hidden = true
    }

    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        let sigQueso :String = "Queso : " + self.lblQueso2.text!
        
        
        let sigvista = segue.destinationViewController as! VistaConfirmacion
        sigvista.sigIngredientes1 = " "
        sigvista.sigIngredientes1 = "Ingredientes: " + agregarIngredientes()
        sigvista.sigQueso1 = sigQueso
        sigvista.sigMasa1 = "Masa: " + sigMasa3
        sigvista.sigTamanio1 = sigtamanio4
    }

    override func viewDidLoad() {
        super.viewDidLoad()
            btnConfirmar.enabled=false
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
