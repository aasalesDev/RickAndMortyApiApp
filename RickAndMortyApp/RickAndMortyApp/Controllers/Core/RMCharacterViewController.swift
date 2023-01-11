//
//  RMCharacterViewController.swift
//  RickAndMortyApp
//
//  Created by Anderson Sales on 23/12/22.
//

import UIKit

/// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {
    let titles = RMViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = titles.charactersTitle
        view.backgroundColor = .systemBackground
        
        
        /*let request = RMRequest(endpoint: .character, queryParameters: [URLQueryItem(name: "name", value: "rick"), URLQueryItem(name: "status", value: "alive")])
        print(request.url as Any)

        // With generics, you can specify the type of your argument, in this case, it expects a String!
        RMService.shared.execute(request, expecting: String.self) { result in
            switch result {
            case .success(_):
                print("Sucesso!")
                break
            case .failure(let error):
                print(String(describing: error))
            }
        }*/
    }
}
