//
//  MainTabBarViewController.swift
//  MovieZone
//
//  Created by Мой Macbook on 27.11.2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
    }
    
    private func setupTabBar() {
        
        tabBar.backgroundColor = .systemBackground
        tabBar.tintColor = .label
        tabBar.unselectedItemTintColor = .gray
                
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        let searchVC = UINavigationController(rootViewController: SearchViewController())
        let dowloadsVC = UINavigationController(rootViewController: DowloadsViewController())
        
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        searchVC.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        dowloadsVC.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")

        homeVC.title = "Home"
        searchVC.title = "Search"
        dowloadsVC.title = "Dowloads"
        
        setViewControllers([homeVC, searchVC, dowloadsVC], animated: true)
    }
}
