//
//  ViewController.swift
//  List
//
//  Created by Paul Colombier on 19/02/2019.
//  Copyright © 2019 Paul Colombier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var repeatLabel: UILabel!
    
    var repeatField = ""
    var userField = ""

    @IBAction func addButtonTouched() {
        repeatField = String(repeatLabel.text!)
        userField = String(userTextField.text!)
        repeatField = (userField + "\n" + repeatField)
        print(repeatField)
        userField = ""
        repeatLabel.text = repeatField
        userTextField.text = userField
    }
    
    @IBAction func clearButtonTouched() {
        repeatLabel.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Close iOS Keyboard by touching anywhere
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tapGesture)
        //If tap gesture blocked some other touches, then add this line :
        //tapGesture.cancelsTouchesInView = false
    }
}

