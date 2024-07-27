//
//  UserViewController.swift
//  AboutMeApp
//
//  Created by Евгений on 27.07.2024.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var welcomeTitle: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradient([UIColor.systemPink, UIColor.systemBlue], 
                         locations: [0.0, 1.0],
                         frame: view.frame)
    }
}

extension UIView {
    func addGradient(_ colors: [UIColor], 
                     locations: [NSNumber],
                     frame: CGRect = .zero) {
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = colors.map{ $0.cgColor }
        gradientLayer.locations = locations
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.frame = frame
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
