//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Евгений on 27.07.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var welcomeLoginTitle: UILabel!
    @IBOutlet var welcomeNameTitle: UILabel!
    
    // MARK: - Public Properties
    var userDataWelcome: User!
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradient()
        
        welcomeLoginTitle.text = "Welcome, \(userDataWelcome.login)!"
        welcomeNameTitle.text = "My name is \(userDataWelcome.person.fullName)."
    }
}

