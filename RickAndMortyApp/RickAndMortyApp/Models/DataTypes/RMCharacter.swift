//
//  RMCharacter.swift
//  RickAndMortyApp
//
//  Created by Anderson Sales on 23/12/22.
//

import Foundation

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMCharacterOrigin
    let location: RMCharacterSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
