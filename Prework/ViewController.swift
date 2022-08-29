//
//  ViewController.swift
//  Prework
//
//  Created by Celeste Nelson on 8/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillAmountTextField: UITextField!
    
    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    @IBOutlet weak var TotalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func CalculateTip(_ sender: Any) {
        // Get Bbill amount from textr field input
        let bill = Double(BillAmountTextField.text! ) ?? 0
        // Get Total tip by multiplying tip*tippercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
        tipPercentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update Tip Amount Label
        TipAmountLabel.text = String(format: "$%.2f" , tip)
        //update total Amount
        TotalLabel.text = String(format: "$%.2f" , total)
    
    }
    

}

