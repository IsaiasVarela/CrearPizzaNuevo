//
//  ViewController.swift
//  CrearPizza
//
//  Created by Isaias Varela on 14/02/16.
//  Copyright © 2016 Isaias Varela. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var tamanioDATA = ["Chica", "Mediana", "Grande"]
    
    
    @IBOutlet weak var lblTamañoPizza: UILabel!
    @IBOutlet weak var PickerTamanio: UIPickerView!
    @IBOutlet weak var BtnAvanzar: UIButton!
    
    override func viewDidLoad() {
        // Do any additional setup after loading the view, typically from a nib.

        super.viewDidLoad()
        self.PickerTamanio.delegate = self
        self.PickerTamanio.dataSource = self
        
        if self.lblTamañoPizza.text == "-" {
            BtnAvanzar.enabled = false
        }
        self.lblTamañoPizza.hidden = true
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tamanioDATA.count
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblTamañoPizza.text = tamanioDATA[row]
            if BtnAvanzar.enabled == false {
                BtnAvanzar.enabled = true
            }
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tamanioDATA[row]
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

