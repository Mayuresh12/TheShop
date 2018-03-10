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
    @IBOutlet weak var countHoursLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
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
        
        countHoursLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    
    @objc func calculate(){
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text{
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                countHoursLabel.isHidden = false
                hoursLabel.isHidden = false
                countHoursLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
    }
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        countHoursLabel.isHidden = true
        hoursLabel.isHidden = true
        view.endEditing(false)

        wageTxt.text = ""
        priceTxt.text = ""
    }
    
}

