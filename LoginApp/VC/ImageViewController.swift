//
//  ImageViewController.swift
//  LoginApp
//
//  Created by 1 on 31.08.2021.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = imageView.frame.height / 2
        }
    }
    @IBOutlet weak var label: UILabel!
    
    var user: User!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "My age is \(String(user.person.age)) and my hobby is \(user.person.hobby)"
        imageView.image = UIImage(named: user.person.image)
        
    }
    

    

}
