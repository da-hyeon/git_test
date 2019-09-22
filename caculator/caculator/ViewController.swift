//
//  ViewController.swift
//  caculator
//
//  Created by GeoMacbookPro on 22/09/2019.
//  Copyright © 2019 GeoMacbookPro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultView: UILabel!
    
    var firstNum = "0"
    var lastNum = "-1"
    var operationTouchCheck = false
    
    var touchOperationSymbol = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func zeroCheck() {
        if resultView.text == "0" {
            resultView.text = ""
        }
    }
    
    func saveFirstNubmer(){
        firstNum = resultView.text!
    }
    
    func saveLastNumber() {
        lastNum = resultView.text!
    }
    
    func finalCalculator () {
        let first = Int(firstNum)
        let last = Int(lastNum)
        
        if touchOperationSymbol == "+" {
            resultView.text = (String)(first! + last!)
        } else if touchOperationSymbol == "-" {
            resultView.text = (String)(first! - last!)
        }
    }
    
    @IBAction func touchOperation(_ sender: UIButton) {
        
        
        if sender.currentTitle == "+" {
            operationTouchCheck = true
            saveFirstNubmer()
            touchOperationSymbol = "+"
        } else if  sender.currentTitle == "-" {
            operationTouchCheck = true
            saveFirstNubmer()
            touchOperationSymbol = "-"
        } else if  sender.currentTitle == "x" {
            
        } else if  sender.currentTitle == "/" {
            
        } else if  sender.currentTitle == "C" {
            resultView.text = "0"
        } else if  sender.currentTitle == "=" {
            saveLastNumber()
            finalCalculator()
        }
    }
    
    @IBAction func touchDigit(_ sender: UIButton) {
        if operationTouchCheck {
            resultView.text = ""
            operationTouchCheck = false
        }
        
        zeroCheck()
        resultView.text =  resultView.text! + sender.currentTitle!
        
    }
    
}

