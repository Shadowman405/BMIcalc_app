//
//  CalculaterBrain.swift
//  BMI Calculator
//
//  Created by Maxim Mitin on 21.04.22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / ( height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fir as a fidle!", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: .systemPink)
        }
        
    }
    
    func getBMIValue() -> String {
        guard let bmi = bmi?.value else { return "0.0"}
        return String(format: "%.1f", bmi)
    }
    
    func getAdvice() -> String {
        guard let advice = bmi?.advice else { return "default"}
        return advice
    }
    
    func getColor() -> UIColor {
        guard let color = bmi?.color else { return UIColor.black}
        return color
    }
}
