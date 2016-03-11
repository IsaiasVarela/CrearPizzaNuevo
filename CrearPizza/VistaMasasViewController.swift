//
//  VistaMasasViewController.swift
//  CrearPizza
//
//  Created by Isaias Varela on 14/02/16.
//  Copyright © 2016 Isaias Varela. All rights reserved.
//

import UIKit

class VistaMasasViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var masaDATA = ["Gruesa", "Delgada", "Crujiente"]
    var sigTamanio2 :String = " "
    
    @IBOutlet weak var Seleccion1: UILabel!
    @IBOutlet weak var masaSeleccionada: UILabel!
    @IBOutlet weak var tamanio2: UILabel!
    @IBOutlet weak var PickerMasa: UIPickerView!
    @IBOutlet weak var BtnAvanzar: UIButton!

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return masaDATA.count
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        masaSeleccionada.text = masaDATA[row]
        if BtnAvanzar.enabled == false {
            BtnAvanzar.enabled = true
        }

    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return masaDATA[row]
    }
    

     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.PickerMasa.delegate = self
        self.PickerMasa.dataSource = self
           masaSeleccionada.hidden = true
        if masaSeleccionada.text == "-" {
            BtnAvanzar.enabled = false
        }
        
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
