//
//  CalculatorBrain.swift
//  BMI Calculator
//


import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1Decimal = String(format: "%.1f", bmi?.value ?? 0.0 )
        return bmiTo1Decimal
    }
    
    func getAdvice() -> String {
        let advice = bmi?.advice ?? "Give some data"
        return advice
    }
    
    func getColor() -> UIColor {
        let color = bmi?.color ?? UIColor(red: 0.2, green: 0.5, blue: 0.5, alpha: 0.5)
        return color
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more fruits", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as flea", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pizza", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    
}
