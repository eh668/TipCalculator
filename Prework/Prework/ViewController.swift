//
//  ViewController.swift
//  Prework
//
//  Created by Elysia Hung on 12/2/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmount: UITextField!
    @IBOutlet weak var tipPercentage: UITextField!
    @IBOutlet weak var totalAmount: UITextField!
    @IBOutlet weak var tipSlider: UISlider!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // Sets the title in the NavBar
        self.title = "Tip Calculator"
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//
//        let tipPercentage = defaults.integer(forKey: "tipPercentage")
//        tipSlider.value = Float(tipPercentage)
//        tipAmount.text = "\(tipPercentage)%"
//
//    }
    
    
    @IBAction func tipSliderChange(_ sender: UISlider) {
   
        tipPercentage.text = String(format: "%02d%%", Int(tipSlider.value * 100))
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billAmount.text!) ?? 0.0
        let tip = bill * Double(tipSlider.value)
        let total = bill + tip
        
        billAmount.text = String(format: "$%.2f", bill)
        tipAmount.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f", total)
        
        
    }
    
    
//
//    @IBAction func stepper(_ sender: UIStepper) {
//
//        partySizeLabel.text = String(Int(sender.value))
//
//    }
//
//    @IBAction func calculateTip(_ sender: Any) {
//
//        let bill = Double(billAmountTextField.text!) ?? 0
//
//        let tipPercentages = [0.15, 0.18, 0.2]
//        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
//        let total = bill + tip
//
//        tipAmountLabel.text = String(format: "$%.2f", tip)
//        totalLabel.text = String(format: "$%.2f", total)
//
//        let text: String = partySizeLabel.text ?? "0"
//        let partySize : Double = Double(text) ?? 0.0
//
//        let tipPerPerson = total / partySize
//
//        totalPerPerson.text = String(format: "$%.2f", tipPerPerson)
//
//
////        let perPerson = Double(total / Double(partySizeLabel)) ?? 0.0
//    }
    

}

