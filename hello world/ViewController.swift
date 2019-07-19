//
//  ViewController.swift
//  hello world
//
//  Created by Paul Colombier on 19/02/2019.
//  Copyright © 2019 Paul Colombier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var repeatLabel: UILabel!
    
    @IBAction func repeatButtonTouched() {
        repeatLabel.text = userTextField.text
        userTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

