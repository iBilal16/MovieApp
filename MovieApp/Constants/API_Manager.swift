//
//  API_Manager.swift
//  MovieApp
//
//  Created by Bilal Ahmad on 14/03/2024.
//

import Foundation
import Alamofire

let api_baseURL = "https://api.themoviedb.org/3/trending/all/"

let image_base_url = "https://api.themoviedb.org/6pZgH10jhpToPcf0uvyTCPFhWpI.jpg"

class API_Manager {
    
    static let movie_Api = api_baseURL + "day"
    
    
    class func header()->HTTPHeaders{
        let headers : HTTPHeaders = [
            //"Authorization": "Bearer \(USERDEFAULTS.getToken())"
        ]
        return headers
    }
    
}
