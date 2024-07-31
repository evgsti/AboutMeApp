//
//  LoginViewController.swift
//  AboutMeApp
//
//  Created by Евгений on 26.07.2024.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet private var loginTextField: UITextField!
    @IBOutlet private var passwordTextField: UITextField!
    
    // MARK: - Private Properties
    private let userData = User.getUser()
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.text = userData.login
        passwordTextField.text = userData.password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBar = segue.destination as? TabBarController
        tabBar?.tabBarUserData = userData
    }
        
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard loginTextField.text == userData.login, passwordTextField.text == userData.password else {
            showErrorAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        return true
    }
    
    // MARK: - IB Actions
    @IBAction func forgotUserButtonAction(_ sender: UIButton) {
        showInfoAlert(withTitle: "Login", andMessage: userData.login)
    }
    
    @IBAction func forgotPassButtonAction(_ sender: UIButton) {
        showInfoAlert(withTitle: "Password", andMessage: userData.password)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
// MARK: - Private Methods
    private func showInfoAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func showErrorAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {_ in
            self.passwordTextField.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
