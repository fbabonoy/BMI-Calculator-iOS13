//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by fernando babonoyaba on 11/8/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit


class ResultViewController: UIViewController{
    
    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    @IBOutlet var backView: UIView!
    
    var bmiValue: String?
    var bmiAdvice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLable.text = bmiValue
        adviceLable.text = bmiAdvice
        backView.backgroundColor = color
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
