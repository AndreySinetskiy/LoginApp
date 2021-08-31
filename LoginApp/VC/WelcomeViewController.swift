//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by 1 on 24.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(user.person.fullname)"
    }
    
    
    

}