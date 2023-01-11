//
//  GetCharactersResponse.swift
//  RickAndMortyApp
//
//  Created by Anderson Sales on 28/12/22.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    
    let info: Info
    let results: [RMCharacter]
    
    struct Info: Codable {
        let count: Int?
        let pages: Int?
        let next: String?
        let prev: String?
    }
}
