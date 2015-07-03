//
//  SecondViewController.swift
//  Currency Converter
//
//  Created by John Stojka  on 7/2/15.
//  Copyright © 2015 John Stojka . All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var dollarTextField: UITextField!
    
    @IBOutlet weak var euroFromDollarAmount: UILabel!
    
    @IBOutlet weak var poundFromDollarAmount: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            }
    
    
    @IBAction func fromDollarButtonPressed(sender: AnyObject) {
        
        let x = Double(dollarTextField.text!)
    
        var euroAmount1 : Double = x! * 2
        
        var poundAmount1 : Double = x! / 2
        
        euroAmount1 = round(euroAmount1 * 100) / 100
        
        poundAmount1 = round(poundAmount1 * 100) / 100
        
        let formattedEuroAmount1 = NSString(format: "%.2f", euroAmount1)
        
        let formattedPoundAmount1 = NSString(format: "%.2f", poundAmount1)
        
        euroFromDollarAmount.text! = "Euros: \(formattedEuroAmount1)"
        
        poundFromDollarAmount.text! = "Pounds: \(formattedPoundAmount1)"
        
    }
    
   

}


