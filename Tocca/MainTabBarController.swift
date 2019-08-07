//
//  MainTabBarController.swift
//  Tocca
//
//  Created by Casey Callow on 8/6/19.
//  Copyright © 2019 caseycallow. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegate()
        setupTabs()
        setupColors()
        setupFont()
    }
    
    private func setupDelegate() {
        delegate = self
    }

    private func setupTabs() {
        let contacts = UIViewController()
        let myCard = MyCardViewController()
        let settings = UIViewController()
        
        contacts.tabBarItem = UITabBarItem(title: "Contacts", image: UIImage(named: "group"), tag: 0)
        myCard.tabBarItem = UITabBarItem(title: "My Card", image: UIImage(named: "person"), tag: 1)
        settings.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(named: "gear"), tag: 2)
        
        self.viewControllers = [contacts, myCard, settings].map {
            UINavigationController(rootViewController: $0)
        }
        
        selectedIndex = 1
    }
    
    private func setupColors() {
        tabBar.tintColor = Color.activeHighlight
        tabBar.unselectedItemTintColor = Color.secondaryHighlight
        tabBar.barTintColor = Color.tabBarBackground
        tabBar.backgroundColor = Color.tabBarBackground
        tabBar.alpha = 1
    }
    
    private func setupFont() {
        UITabBarItem.appearance().setTitleTextAttributes([.font: UIFont.appRegularFontWith(size: 12)], for: .normal)
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return false
    }
}
