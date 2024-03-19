//
//  Movie.swift
//  MovieApp
//
//  Created by Bilal Ahmad on 19/03/2024.
//

import Foundation

struct Movie: Decodable {
    let id: Int!
    let poster_path: String?
    let backdrop_path: String?
    let title: String
    let release_date: String
    let vote_average: Double
    let overview: String
    let vote_count:Int!
}
