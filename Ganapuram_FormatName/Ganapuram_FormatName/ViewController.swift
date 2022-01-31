//
//  ViewController.swift
//  Ganapuram_FormatName
//
//  Created by Ganapuram,Sai Kumar on 1/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet weak var details: UILabel!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        var firstName = firstNameTextField.text
        var lastName = lastNameTextField.text
        
        var i1 = firstName?.first
        var i2 = lastName?.first
        details.text = "Details"
        fullNameLabel.text = "Full Name : \(lastName!), \(firstName!)"
        initialsLabel.text = "Initials : \(i1!)\(i2!)"
    }
    
    @IBAction func onClickOfReset(_ sender: UIButton) {
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        details.text = ""
        fullNameLabel.text = ""
        initialsLabel.text = ""
        firstNameTextField.becomeFirstResponder()
    }
}

