//
//  ViewController.swift
//  The Shop
//
//  Created by Mayuresh Rao on 3/4/18.
//  Copyright © 2018 Mayuresh Rao. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame : CGRect(x:0 , y:0 , width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9420848782, green: 0.6479817742, blue: 0.2300295952, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        // selector above usedis safer as Selector("calculate ") will crash if the calculate function is not found
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
    }
    
    @objc func calculate(){
        
        print("I am here ")
    }
    

}

