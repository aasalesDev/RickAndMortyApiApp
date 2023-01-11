//
//  RMLocationViewController.swift
//  RickAndMortyApp
//
//  Created by Anderson Sales on 23/12/22.
//

import UIKit

/// Controller to show and search for locations
final class RMLocationViewController: UIViewController {
    let titles = RMViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = titles.locationsTitle
        view.backgroundColor = .systemBackground
    }

}
