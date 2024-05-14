//
//  Movie.swift
//  movieApp
//
//  Created by Tekup-mac-3 on 26/4/2024.
//

// Movie.swift
import Foundation
struct Movie: Codable ,Identifiable{
    let id: Int
    let title: String
    let posterPath: String?
    let overview: String
    let releaseDate: String
}

