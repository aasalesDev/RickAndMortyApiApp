//
//  RMViewModel.swift
//  RickAndMortyApp
//
//  Created by Anderson Sales on 23/12/22.
//

import Foundation

class RMViewModel {
    private let titles: [String] = ["Characters", "Locations", "Episodes", "Settings"]
    private let systemNames: [String] = ["person", "globe", "tv", "gear"]
    
    func getTitles() -> [String] {
        return titles
    }
    
    var charactersTitle: String {
        return titles[0]
    }
    
    var locationsTitle: String {
        return titles[1]
    }
    
    var episodesTitle: String {
        return titles[2]
    }
    
    var settingsTitle: String {
        return titles[3]
    }
    
    var characterImage: String {
        return systemNames[0]
    }
    
    var locationImage: String {
        return systemNames[1]
    }
    
    var episodeImage: String {
        return systemNames[2]
    }
    
    var settingsImage: String {
        return systemNames[3]
    }
}
