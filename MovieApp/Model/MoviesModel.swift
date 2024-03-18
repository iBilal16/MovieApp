//
//  MoviesModel.swift
//  MovieApp
//
//  Created by Bilal Ahmad on 13/03/2024.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let moviesModel = try? JSONDecoder().decode(MoviesModel.self, from: jsonData)

import Foundation

// mov

struct MovieResult: Codable {
    let Search : [Movies]
}

struct Movies: Codable {
    let Title: String
    let Year: String
    let imdbID: String
    let _Type: String
    let Poster: String
    
    private enum CodingKeys: String, CodingKey {
        case Title, Year, imdbID, _Type = "Type", Poster
       
    }
}
// MARK: - MoviesModel
struct MoviesModel: Codable {
    var page: Int?
    var results: [Result]?
    var totalPages: Int?
    var totalResults: Int?

    enum CodingKeys: String, CodingKey {
        case page = "page"
        case results = "results"
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Result
struct Result: Codable {
    var adult: Bool?
    var backdropPath: String?
    var id: Int?
    var title: String?
    var originalLanguage: OriginalLanguage?
    var originalTitle: String?
    var overview: String?
    var posterPath: String?
    var mediaType: MediaType?
    var genreIDS: [Int]?
    var popularity: Double?
    var releaseDate: String?
    var video: Bool?
    var voteAverage: Double?
    var voteCount: Int?
    var name: String?
    var originalName: String?
    var firstAirDate: String?
    var originCountry: [String]?

    enum CodingKeys: String, CodingKey {
        case adult = "adult"
        case backdropPath = "backdrop_path"
        case id = "id"
        case title = "title"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview = "overview"
        case posterPath = "poster_path"
        case mediaType = "media_type"
        case genreIDS = "genre_ids"
        case popularity = "popularity"
        case releaseDate = "release_date"
        case video = "video"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case name = "name"
        case originalName = "original_name"
        case firstAirDate = "first_air_date"
        case originCountry = "origin_country"
    }
}

enum MediaType: String, Codable {
    case movie = "movie"
    case tv = "tv"
}

enum OriginalLanguage: String, Codable {
    case en = "en"
    case fr = "fr"
    case ja = "ja"
    case ko = "ko"
}

