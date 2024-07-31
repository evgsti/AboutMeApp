//
//  TabBarController.swift
//  AboutMeApp
//
//  Created by Евгений on 30.07.2024.
//

import UIKit

final class TabBarController: UITabBarController {
    
    // MARK: - Public Properties
    var tabBarUserData: User!
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        
        tabBar.items?[0].image = UIImage(systemName: "person")
        tabBar.items?[1].image = UIImage(systemName: "person")
        
        tabBar.items?[0].title = tabBarUserData.login
        tabBar.items?[1].title = tabBarUserData.person.fullName
        
        loadUserData()
    }
    
    // MARK: - Private Methods
    private func loadUserData() {
        if let viewControllers = viewControllers {
            for viewController in viewControllers {
                if let welcomeVC = viewController as? WelcomeViewController {
                    welcomeVC.userDataWelcome = tabBarUserData
                } else if let navigationVC = viewController as? UINavigationController {
                    if let userInfoVC = navigationVC.topViewController as? InfoViewController {
                        userInfoVC.userDataInfo = tabBarUserData
                    }
                }
            }
        }
    }
}

