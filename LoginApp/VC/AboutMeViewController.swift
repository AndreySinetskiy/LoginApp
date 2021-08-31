//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by 1 on 30.08.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    var user: User!
    override func viewDidLoad() {
        super.viewDidLoad()

        title = user.person.fullname
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? ImageViewController else { return }
        imageVC.user = user
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {}
}
