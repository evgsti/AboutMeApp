//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Евгений on 27.07.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var welcomeTitle: UILabel!
    
    // MARK: - Public Properties
    var userName: String!
    

    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradient(
            [UIColor.systemPink, UIColor.systemCyan],
            locations: [0.0, 1.0],
            frame: view.frame
        )
        
        welcomeTitle.text = "Welcome, \(userName.capitalized)!"
    }
}

// MARK: - Set gradient background
extension UIView {
    func setGradient(
        _ colors: [UIColor],
        locations: [NSNumber],
        frame: CGRect = .zero
    ) {
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = colors.map{ $0.cgColor }
        gradientLayer.locations = locations
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.frame = frame
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
