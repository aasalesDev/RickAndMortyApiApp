//
//  RMEpisodeViewController.swift
//  RickAndMortyApp
//
//  Created by Anderson Sales on 23/12/22.
//

import UIKit

final class RMEpisodeViewController: UIViewController {
    let titles = RMViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = titles.episodesTitle
        view.backgroundColor = .systemBackground
    }

}
