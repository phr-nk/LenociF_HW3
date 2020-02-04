//
//  ViewController.swift
//  LenociF_HW3
//
//  Created by phrank on 2/1/20.
//  Copyright © 2020 phrank. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var num1: Int?
    var num2: Int?
    var isReady = false; //determine if the still typing a number

    @IBOutlet weak var display: UILabel!
    
    //when the + is pressed
    @IBAction func addPressed(_ sender: UIButton) {
        isReady = false
        num1 = Int(display.text!)
        
       
    }
    //when equals is pressed
    @IBAction func equalsPressed(_ sender: UIButton) {
        isReady = false
        var res = 0
        num2 = Int(display.text!) //get second number
        res = num1! + num2!
        display.text = String(res)
        
    }
    
    //get inital number and update display
    @IBAction func getInitNumber(_ sender: UIButton) {
        let number = String(sender.currentTitle ?? "0")
              
          if isReady
          {
              display.text = (display.text ?? "0") + number
          }
          else
          {
              display.text = number
              isReady = true
          }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

