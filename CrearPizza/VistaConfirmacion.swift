//
//  VistaConfirmacion.swift
//  CrearPizza
//
//  Created by Isaias Varela on 05/03/16.
//  Copyright © 2016 Isaias Varela. All rights reserved.
//

import UIKit

class VistaConfirmacion: UIViewController {

    var sigIngredientes1 :String = " "
    var sigQueso1 :String = " "
    var sigMasa1 :String = " "
    var sigTamanio1 :String = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var cTamanio: UILabel!
    
    @IBOutlet weak var cMasa: UILabel!
    
    @IBOutlet weak var cQueso: UILabel!
    
    @IBOutlet weak var cIngredientes: UILabel!
    
   
    override func viewWillAppear(animated: Bool) {
        cIngredientes.text = sigIngredientes1
        cQueso.text = sigQueso1
        cMasa.text = sigMasa1
        cTamanio.text = "Tamaño: " + sigTamanio1
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
