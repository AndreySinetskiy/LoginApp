//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by 1 on 24.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var textLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if textLabel != nil {
            welcomeLabel.text = "Welcome, \(String(textLabel))!"
        }
    }
    
    @IBAction func LogOutPressedButton() {
        dismiss(animated: true)
    }
    
    

}
