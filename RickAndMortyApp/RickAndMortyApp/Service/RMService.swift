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
    //Privatized constructor
    private init() {}
    
    enum RMServiceError: Error {
        case failedToCreateRequest
        case failedToGetData
    }
    
    // Function created to make a request (API call) with a callback function (completion)
    public func execute<T: Codable>(_ request: RMRequest, expecting type: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMServiceError.failedToCreateRequest))
            return
        }
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
            // Decode Response
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                completion(.success(result))
                //JSONSerialization.jsonObject(with: data)
                //print(String(describing: json))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    // MARK: - Private
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
}
