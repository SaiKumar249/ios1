//
//  ViewController.swift
//  Ganapuram_Calculator
//
//  Created by Ganapuram,Sai Kumar on 2/14/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Display: UILabel!
    
    var number1=""
            var number2=""
            var result=""
            var operation=""
            var opChanged = false
            var currentNumber2 = ""
            var inChainmode = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func AC(_ sender: UIButton) {
        
        clearAll()
                        
                    }
                    func clearAll(){
                        number2 = ""
                        number1 = ""
                        opChanged = false
                        operation = ""
                        currentNumber2 = ""
                        Display.text = "0"
                        Display.textColor = .red
                        inChainmode=false
                    }
    func setData(_ number: String){
                    if Display.text == "0"{
                        Display.text = ""
                        Display.textColor = .black
                    }
                    if !opChanged {
                        Display.text! += number
                        number1 += number
                    }else{
                        print(inChainmode)
                        if !inChainmode {
                            Display.text! += number
                            number2 += number
                        }else {
                            Display.text = ""
                            Display.text! += number
                            number2 += number
                        }
                    }
                }
                    
                    func calTemp(_ operation:String)->String {
                        print("\(number1),\(number2)")
                        if number1 != "" && number2 != ""{
                            if operation == "+"{
                                number1 = String(Double(number1)! + Double(number2)!)
                                currentNumber2 = number2
                                number2 = ""
                                return String(number1)
                                //                return String(Double(number1)! + Double(number2)!)
                            }
                            if operation == "-"{
                                number1 = String(Double(number1)! - Double(number2)!)
                                currentNumber2 = number2
                                number2 = ""
                                return String(number1)
                            }
                            if operation == "*"{
                                number1 = String(Double(number1)! * Double(number2)!)
                                currentNumber2 = number2
                                number2 = ""
                                return String(number1)
                            }
                            if operation == "/"{
                                number1 = String(Double(number1)! / Double(number2)!)
                                currentNumber2 = number2
                                number2 = ""
                                return String(number1)
                            }
                            if operation == "%" {
                                            let s1 = Double(number1)!
                                            let s2 = Double(number2)!
                                            var r = s1.remainder(dividingBy: s2)
                                            number1 = String(r)
                                            currentNumber2 = number2
                                            number2 = ""
                                            return String(number1)
                                        }
                        }
                        return ""
                    }
                    
                    func resultFormatter(_ result:String)->String {
                        let value = Double(result)!
                        var resultStr = String(round(value * 100000) / 100000.0)
                        
                        if resultStr.contains(".0"){
                            resultStr.removeSubrange(resultStr.index(resultStr.endIndex, offsetBy: -2)..<resultStr.endIndex)
                        }
                        
                        return resultStr
        }
    
    
    @IBAction func C(_ sender: UIButton) {
        number2 = ""
        Display.text = ""
    }
    
    @IBAction func plusOrMinus(_ sender: UIButton) {
        
        if number1 == "" {
                    
                    Display.text = "-" + Display.text!
                    number1 = "\(Display.text!)"
                    
                }
                else{
                    Display.text = "-" + Display.text!
                    number2 = "\(Display.text!)"
                }
    }
    
    @IBAction func divide(_ sender: UIButton) {
        
        let temp = calTemp(operation)
                operation = "/"
              Display.text = (temp != "") ? resultFormatter(temp) : ""
                if temp != "" {
                    //            inChainmode = true
                    if number2 != ""{
                        inChainmode = true
                        //            number1 = temp
                        if opChanged {
                            result = String(Double(temp)! / Double(number2)!)
                            print(result)
                            if result == "inf"{
                              Display.text! = "Error"
                            }else{
                              Display.text! = resultFormatter(result)
                            }
                        }
                    }
                }
                opChanged = true
    }
    
    @IBAction func seven(_ sender: UIButton) {
        setData("7")
    }
    
    @IBAction func eight(_ sender: UIButton) {
        setData("8")
    }
    
    @IBAction func nine(_ sender: UIButton) {
        setData("9")
    }
    
    @IBAction func multiply(_ sender: UIButton) {
        
        let temp = calTemp(operation)
                print("temp is \(temp)")
                operation = "*"
                currentNumber2=""
            Display.text = (temp != "") ? resultFormatter(temp) : ""
                opChanged=true
    }
    
    @IBAction func four(_ sender: UIButton) {
        setData("4")
    }
    
    
    @IBAction func five(_ sender: UIButton) {
        setData("5")
    }
    
    @IBAction func six(_ sender: UIButton) {
        setData("6")
    }
    
    @IBAction func substract(_ sender: UIButton) {
        
        let temp = calTemp(operation)
                operation = "-"
               Display.text = (temp != "") ? resultFormatter(temp) : ""
                if temp != "" {
                    
                    if number2 != ""{
                        inChainmode = true
                        currentNumber2 = number2;
                        if opChanged {
                            result = String(Double(temp)! - Double(number2)!)
                           Display.text! = resultFormatter(result)
                        }
                    }
                }
                opChanged = true
    }
    
    @IBAction func one(_ sender: UIButton) {
        setData("1")
    }
    @IBAction func two(_ sender: UIButton) {
        setData("2")
    }
    
    @IBAction func three(_ sender: UIButton) {
        setData("3")
    }
    
    @IBAction func add(_ sender: UIButton) {
        
        let temp = calTemp(operation)
            operation = "+"
                currentNumber2=""
            Display.text = (temp != "") ? resultFormatter(temp) : ""
                opChanged=true
    }
    
    @IBAction func zero(_ sender: UIButton) {
        setData("0")
    }
    
    
    @IBAction func decimalPoint(_ sender: UIButton) {
        setData(".")
    }
    
    @IBAction func modulus(_ sender: UIButton) {
        
        let temp = calTemp(operation)
                print("temp is \(temp)")
                operation = "%"
                currentNumber2=""
            Display.text = (temp != "") ? resultFormatter(temp) : ""
                opChanged=true
    }
    
    @IBAction func equals(_ sender: UIButton) {
        
        var res = ""
                switch operation {
                case "+":
                    
                    if currentNumber2 != "" {
                        res = String(Double(number1)! + Double(currentNumber2)!)
                        Display.text = resultFormatter(res)
                         number2 = currentNumber2
                    }else{
                        res = String(Double(number1)! + Double(number2)!)
                        Display.text = resultFormatter(res)
                    }
                    number1 = res
                    
                    break
                case "*":
                    if currentNumber2 != "" {
                        res = String(Double(number1)! * Double(currentNumber2)!)
                        Display.text = resultFormatter(res)
                        
                    }else{
                        res = String(Double(number1)! * Double(number2)!)
                        Display.text = resultFormatter(res)
                    }
                    number1 = res
                    
                    break
                case "-":
                    if currentNumber2 != "" {
                        res = String(Double(number1)! - Double(currentNumber2)!)
                        Display.text = resultFormatter(res)
                    }else{
                        res = String(Double(number1)! - Double(number2)!)
                        Display.text = resultFormatter(res)
                    }
                    number1 = res
                    
                    break
                case "/":
                    if Display.text == "Error"{
                        clearAll()
                    }else{
                        if currentNumber2 != "" {
                            res = String(Double(number1)! / Double(currentNumber2)!)
                            if res == "inf"{
                                Display.text! = "Error"
                                return
                            }else{
                                Display.text = resultFormatter(res)
                                
                            }
                        }else{
                            res = String(Double(number1)! / Double(number2)!)
                            if res == "inf"{
                                Display.text! = "Error"
                                return
                            }else{
                                Display.text = resultFormatter(res)
                            }
                        }
                        number1 = res
                        
                    }
                    break
                case "%":
                    if currentNumber2 != "" {
                        
                        let s1 = Double(number1)!
                        let s2 = Double(currentNumber2)!
                        var r = s1.remainder(dividingBy: s2)
                        res = String(r)
                        Display.text = resultFormatter(res)
                    }else{
                        
                        let s1 = Double(number1)!
                        let s2 = Double(number2)!
                        var r = s1.remainder(dividingBy: s2)
                        res = String(r)
                        Display.text = resultFormatter(res)
                    }
                    number1 = res
                    
                    break
                default :
                    print("Nothing")
                
                }
            }
            
    }
    
    
    
    
    


