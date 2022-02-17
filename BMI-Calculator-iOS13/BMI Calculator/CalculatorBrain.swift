//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ronald Pineda on 10/2/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Take some tapas man!", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Nice job, you are on shape!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Too mnay tapas man!, do some sports!", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
}
