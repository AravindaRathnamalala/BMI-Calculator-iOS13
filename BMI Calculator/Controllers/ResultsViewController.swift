//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Harshana Rathnamalala on 4/12/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var yourResultsLabel: UILabel!
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiVal: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultsLabel.text = bmiVal
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func onPressRecalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
