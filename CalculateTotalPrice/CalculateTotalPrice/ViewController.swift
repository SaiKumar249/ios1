//
//  ViewController.swift
//  CalculateTotalPrice
//
//  Created by Ganapuram,Sai Kumar on 2/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOne: UITextField!
    
    @IBOutlet weak var priceOne: UITextField!
    
    @IBOutlet weak var nameTwo: UITextField!
    
    
    @IBOutlet weak var priceTwo: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var displayLabel1: UILabel!
    @IBOutlet weak var displayLabel2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func printButton(_ sender: Any) {
        var price1 : Double = Double(priceOne.text!)!
        var price2 : Double = Double(priceTwo.text!)!
        
        var discount1 : Double = (Double(price1) * 25)/100
        var t1 : Double = Double(price1) - Double(discount1)
        var tax1 : Double = (Double(t1) * 8.5)/100
        var fp1 : Double = Double(t1) + Double(tax1)
        
        var discount2 : Double = (Double(price2) * 25)/100
        var t2 : Double = Double(price2) - Double(discount2)
        var tax2 : Double = (Double(t2) * 8.5)/100
        var fp2 : Double = Double(t2) + Double(tax2)
        
        var p : Double = Double(fp1) + Double(fp2)
        
        displayLabel.text = "\(nameOne) :         $\(priceOne).0"
        displayLabel1.text = "\(nameTwo) :            $\(priceTwo).0"
        displayLabel2.text = "Total price after discount and Tax is :   $\(p)"
    }
    
}

