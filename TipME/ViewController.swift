//
//  ViewController.swift
//  TipME
//
//  Created by Jameel Brice on 1/19/20.
//  Copyright © 2020 Jameel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLaberl: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        calculate()
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        calculate()
    }
    
    func calculate() {
        let bill =  Double (billField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill *  tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
            
        tipLaberl.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f",total)
    }

}
