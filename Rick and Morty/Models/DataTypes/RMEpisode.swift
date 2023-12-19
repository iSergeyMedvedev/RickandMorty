//
//  RMEpisode.swift
//  Rick and Morty
//
//  Created by Sergey Medvedev on 18.12.2023.
//

import Foundation

struct RMEpisod: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}


