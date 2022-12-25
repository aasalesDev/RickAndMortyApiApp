//
//  RMTabBarController.swift
//  RickAndMortyApp
//
//  Created by Anderson Sales on 23/12/22.
//

import UIKit

final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        configureTabs()
    }
    
    private func configureTabs() {
        
        let rmViewModel = RMViewModel()
        
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
            
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: rmViewModel.charactersTitle, image: UIImage(systemName: rmViewModel.characterImage), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: rmViewModel.locationsTitle, image: UIImage(systemName: rmViewModel.locationImage), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: rmViewModel.episodesTitle, image: UIImage(systemName: rmViewModel.episodeImage), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: rmViewModel.settingsTitle, image: UIImage(systemName: rmViewModel.settingsImage), tag: 4)
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
    }
    
}

