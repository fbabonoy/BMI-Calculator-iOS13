//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by fernando babonoyaba on 11/8/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue =  weight / pow(height, 2.0)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "eat some food", color: UIColor.blue)
        } else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Good job you are healthy", color: UIColor.green)
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "stop eating", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getBMIadvice() -> String {
        return bmi?.advice ?? "there is no advice"
    }
    
    func getBMIColor() -> UIColor{
        return bmi?.color ?? UIColor.gray
    }

}
