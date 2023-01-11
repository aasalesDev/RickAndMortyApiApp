//
//  RMSettingsViewController.swift
//  RickAndMortyApp
//
//  Created by Anderson Sales on 23/12/22.
//

import UIKit

/// Controller to show options and settings
final class RMSettingsViewController: UIViewController {
    let titles = RMViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = titles.settingsTitle
        view.backgroundColor = .systemBackground
    }

}
