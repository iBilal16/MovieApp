//
//  APIResults.swift
//  MovieApp
//
//  Created by Bilal Ahmad on 19/03/2024.
//

import Foundation

struct APIResults:Decodable {
    let page: Int
    let total_results: Int
    let total_pages: Int
    let results: [Movie]
}
