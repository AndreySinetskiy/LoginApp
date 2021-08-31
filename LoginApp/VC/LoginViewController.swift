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
    
    private let user = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabbarVC = segue.destination as? UITabBarController else{return}
        guard let viewControllers = tabbarVC.viewControllers else {return}
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let aboutMeVC = navigationVC.topViewController as! AboutMeViewController
                aboutMeVC.user = user 
            }
        }
        
    }
    
    @IBAction func pressedLogInButton() {
        if userNameTF.text != user.login || passwordTF.text != user.password {
            showAlert(with: "Invalid Login or password", and: "Please, enter correct login and password")
        }
    }
    @IBAction func forgetDataButton(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(with: "Oooops", and: "Your user name is \(user.login)")
            : showAlert(with: "ooooops", and: "Your password is \(user.password)")
    }
    @IBAction func unwindSegue(_ unwindSegue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: -
extension LoginViewController {
        private func showAlert(with title: String, and message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(okAction)
            passwordTF.text = ""
            present(alert, animated: true)
            
        }
    
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF{
            passwordTF.becomeFirstResponder()
        } else {
            pressedLogInButton()
            performSegue(withIdentifier: "ShowWelcomeVC", sender: nil)
        }
        return true
    }
}

