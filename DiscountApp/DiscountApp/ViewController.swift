//
//  ViewController.swift
//  DiscountApp
//
//  Created by Ganapuram,Sai Kumar on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Amount: UITextField!
    
    @IBOutlet weak var Discount: UITextField!
    
    @IBOutlet weak var Display: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Submit(_ sender: UIButton) {
        var amount : Double = Double(Amount.text!)!
        var discount : Double = Double(Discount.text!)!
        
        var var1 : Double = (Double(amount) * Double(discount))/100
        
        var res : Double = Double(amount) - Double(var1)
        
        Display.text! = String(res)
    }
    
}

