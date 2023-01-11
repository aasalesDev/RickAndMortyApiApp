//
//  RMEpisode.swift
//  RickAndMortyApp
//
//  Created by Anderson Sales on 23/12/22.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
