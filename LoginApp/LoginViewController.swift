//
//  ViewController.swift
//  LoginApp
//
//  Created by 1 on 24.08.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.textLabel = userNameTF.text
        
        if userNameTF.text != "Andrey" && passwordTF.text != "Swift2021" {
            showAlert(with: "Invalid Login or password", and: "Please, enter correct login and password")

        } else {
            return
        }
        
       
    }
    @IBAction func pressedLogInButton() {
        
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgetNameButton() {
        showAlert(with: "Ooops", and: "Your name is Andrey")
    }
    
    @IBAction func forgetPasswordButton() {
        showAlert(with: "Ooops", and: "Your password is Swift2021")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super .touchesBegan(touches, with: event)
    }
}
// MARK: -
extension LoginViewController {
        private func showAlert(with title: String, and message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(okAction)
            self.passwordTF.text = ""
            present(alert, animated: true)
            
        }
    
}

