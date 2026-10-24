//
//  struct.swift
//  JSONDecoderPractice№2
//
//  Created by Виктор on 24.10.2026.
//

import Foundation

struct Movie: Codable {
    let title: String
    let year: Int
    let rating: Double
    let director: String?
    
    
    enum CodingKeys: String, CodingKey {
        case title = "movie_title"
        case year = "release_year"
        case rating
        case director
    }
}
