//
//  RMService.swift
//  Rick and Morty
//
//  Created by Sergey Medvedev on 18.12.2023.
//

import Foundation

final class RMService {
    static let shared = RMService()
    
    private init() {}
    
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<String, Error>) -> Void) {
        
    }
}
