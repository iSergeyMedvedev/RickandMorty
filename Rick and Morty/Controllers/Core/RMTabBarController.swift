//
//  ViewController.swift
//  Rick and Morty
//
//  Created by Sergey Medvedev on 18.12.2023.
//

import UIKit

final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.backgroundColor = .red
        setUpTabs()
    }
    
    private func setUpTabs() {
        let characterVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let epispodeVC = RMEpicodeViewController()
        let settingVC = RMSettingsViewController()
        
        characterVC.title = "Characters"
        locationVC.title = "Locations"
        epispodeVC.title = "Episodes"
        settingVC.title = "Settings"
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        epispodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: characterVC)
        let nav2 = UINavigationController(rootViewController: locationVC)
        let nav3 = UINavigationController(rootViewController: epispodeVC)
        let nav4 = UINavigationController(rootViewController: settingVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
    }
}

