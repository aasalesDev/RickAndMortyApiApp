//
//  RMService.swift
//  RickAndMortyApp
//
//  Created by Anderson Sales on 25/12/22.
//

import Foundation

// Primary API Service Object to get Rick and Morty data
final class RMService {
    // Singleton design pattern
    static let shared = RMService()
    //Privatized initializer
    private init() {}
    
    // Function created to make a request (API call) with a callback function (completion)
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
