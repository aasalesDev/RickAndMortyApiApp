//
//  RMTabBarController.swift
//  RickAndMortyApp
//
//  Created by Anderson Sales on 23/12/22.
//

import UIKit

/// Controller to house tabs and root tab controllers
final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        configureTabs()
    }
    
    private func configureTabs() {
        
        /// This is to instantiate all view controllers in the tab bar controller
        let rmViewModel = RMViewModel()
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
            
        /// This is to set the root view controller of each navigation controller
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        /// This is for the tabbar items to born with a title and an image when the app is first launched (the view controllers were not loaded just yet)
        nav1.tabBarItem = UITabBarItem(title: rmViewModel.charactersTitle, image: UIImage(systemName: rmViewModel.characterImage), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: rmViewModel.locationsTitle, image: UIImage(systemName: rmViewModel.locationImage), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: rmViewModel.episodesTitle, image: UIImage(systemName: rmViewModel.episodeImage), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: rmViewModel.settingsTitle, image: UIImage(systemName: rmViewModel.settingsImage), tag: 4)
        
        /// This is to set the title preference to "Large"
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        /// This is the sequence in which the navigation bar items will be displayed
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
    }
    
}

