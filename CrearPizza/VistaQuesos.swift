//
//  VistaQuesos.swift
//  CrearPizza
//
//  Created by Isaias Varela on 14/02/16.
//  Copyright © 2016 Isaias Varela. All rights reserved.
//

import UIKit

class VistaQuesos: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var quesoDATA = ["Mozzarella", "Cheddar", "Parmesano","Sin Queso"]
    var sigMasas2 : String = " "
    var sigTamanio3 : String = " "
    
    @IBOutlet weak var quesoSeleccionado: UILabel!
    @IBOutlet weak var lblMasas2: UILabel!
    @IBOutlet weak var lblTamanioEnQuesos: UILabel!
    @IBOutlet weak var PickerQuesos: UIPickerView!
    @IBOutlet weak var BtnAvanzar: UIButton!
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quesoDATA.count
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        quesoSeleccionado.text = quesoDATA[row]
        if BtnAvanzar.enabled == false {
            BtnAvanzar.enabled = true
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return quesoDATA[row]
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.PickerQuesos.delegate = self
        self.PickerQuesos.dataSource = self
        
        if quesoSeleccionado.text == "-" {
            BtnAvanzar.enabled = false
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        //lblMasas2.text = sigMasas2
        //lblTamanioEnQuesos.text = sigTamanio3

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
