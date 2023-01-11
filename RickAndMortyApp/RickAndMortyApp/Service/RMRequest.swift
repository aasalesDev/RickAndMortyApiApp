//
//  RMRequest.swift
//  RickAndMortyApp
//
//  Created by Anderson Sales on 25/12/22.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    // To handle each individual request
    
    // We'll need the following:
    /*
     1 - Base URL
     2 - Endpoint
     3 - Path components
     4 - Query parameters
     // URL: https://rickandmortyapi.com/api/character/2
     */
    
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndPoint
    /// Path components for API, if any
    private let pathComponents: [String]
    /// Query arguments for API, if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the Api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            string += "/"
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            //name=value&name=value...
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        return string
    }
    
    /// Computed and contstructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired Http method
    public let httpMethod = "GET"
    
    /// Construct request
    /// - Parameters
    ///  - endpoint: Target endpoint
    ///  - pathComponents: Collection of path components
    ///  - queryParameters: Collection of query parameters
    init(endpoint: RMEndPoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

extension RMRequest {
    static let listCharactersRequests = RMRequest(endpoint: .character)
}
