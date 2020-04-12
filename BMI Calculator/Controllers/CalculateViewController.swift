//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    
    var calculate = CalculateBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightValueLabel.text = "\(height)m "
        
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weight = String(Int(sender.value))
        
        weightValueLabel.text = "\(weight)kg "
    }
    @IBAction func onPressCalculateButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculate.calculateBMI(height: height, weight: weight)
        performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiVal = calculate.getBMI()
            destinationVC.advice = calculate.getAdvice()
            destinationVC.color = calculate.getColor()
        }
    }
    
    
}

