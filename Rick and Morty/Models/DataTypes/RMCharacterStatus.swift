//
//  RMCharacterStatus.swift
//  Rick and Morty
//
//  Created by Sergey Medvedev on 18.12.2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
