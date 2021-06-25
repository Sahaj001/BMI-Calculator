//
//  ResultsViewController.swift
//  BMI Calculator
//


import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var colorLabel: UIImageView!
    
    
    var bmiValue = "0.0"
    var advice = "No Advice"
    var color = UIColor(red: 0.2, green: 0.5, blue: 0.5, alpha: 0.5)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        colorLabel.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
