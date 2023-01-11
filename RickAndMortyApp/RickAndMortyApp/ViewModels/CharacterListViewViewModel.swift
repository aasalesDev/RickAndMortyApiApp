//
//  CharacterListViewViewModel.swift
//  RickAndMortyApp
//
//  Created by Anderson Sales on 28/12/22.
//

import Foundation

struct CharacterListViewViewModel {
    
    func fetchCharacters(){
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Success")
                print(String(describing: model))
            case .failure(let error):
                print("Failure")
                print(String(describing: error))
            }
        }
    }
}
