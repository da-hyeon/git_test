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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func touchOperation(_ sender: UIButton) {
        if sender.currentTitle == "+" {
            
        } else if  sender.currentTitle == "-" {
            
        } else if  sender.currentTitle == "x" {
            
        } else if  sender.currentTitle == "/" {
            
        } else if  sender.currentTitle == "c" {
            
        }else if  sender.currentTitle == "=" {
            
        }
    }
    
    @IBAction func touchDigit(_ sender: UIButton) {
        
        
    }
    
}

