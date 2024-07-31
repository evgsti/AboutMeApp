//
//  gradientBackground.swift
//  AboutMeApp
//
//  Created by Евгений on 30.07.2024.
//

import UIKit

extension UIView {
    func setGradient() {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [UIColor.systemPink.cgColor, UIColor.systemCyan.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.frame = bounds
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
