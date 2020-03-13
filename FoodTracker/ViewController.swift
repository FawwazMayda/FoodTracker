//
//  ViewController.swift
//  FoodTracker
//
//  Created by Muhammad Fawwaz Mayda on 13/03/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var nametextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nametextField.delegate = self
    }
    // Implement text Field Delegate Method
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    // Implement Image Picker Delegate
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Def Text"
    }
}

