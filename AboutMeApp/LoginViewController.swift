//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Евгений on 26.07.2024.
//

import UIKit

class loginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

// MARK: - Private Methods
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {_ in
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
