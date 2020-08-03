//
//  ViewController.swift
//  tipCalculartor+
//
//  Created by Diego Garcia on 7/30/20.
//  Copyright © 2020 GarcsTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var tipPercentageChosenLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tip Calculator"
        
        self.billAmountTextField.becomeFirstResponder()
    }

    @IBAction func onTap(_ sender: Any) {
        //view.endEditing(true)
    }
    
    @IBAction func CalculatTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        // Calculate the tip and total
        let tip = bill * Double(tipPercentageSlider.value * 0.01)
        let total = bill + tip
        // Update the tip and total labels
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalAmountLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func tipPercentageChange(_ sender: UISlider) {
        let currentPercentage = Int((sender.value + 2.5)/5) * 5
        
        tipPercentageSlider.setValue(Float(currentPercentage), animated: false)
        tipPercentageChosenLabel.text = String(format: "%d%%", currentPercentage)
        
        // Get the bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        // Calculate the tip and total
        let tip = bill * Double(tipPercentageSlider.value * 0.01)
        let total = bill + tip
        // Update the tip and total labels
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalAmountLabel.text = String(format: "$%.2f", total)
    }
    
}

