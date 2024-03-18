//
//  Connectivity.swift
//  MovieApp
//
//  Created by Bilal Ahmad on 14/03/2024.
//

import Foundation
import Alamofire

class Connectivity {
    class var isConnectedToInternet:Bool {
        return NetworkReachabilityManager()!.isReachable
    }
}
