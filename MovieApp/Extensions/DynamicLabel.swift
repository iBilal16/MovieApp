//
//  DynamicLabel.swift
//  Syed_Restaurant
//
//  Created by Bilal Ahmad on 09/12/2021.
//

import Foundation
import UIKit

class DynamicLabel: UILabel{

    var fullText: String?
    var truncatedLength = 100
    var isTruncated = true

    func collapse(){
        let index = fullText!.index(fullText!.startIndex, offsetBy: truncatedLength)
        self.text = fullText![...index].description + "... More"
        isTruncated = true
    }

    func expand(){
        self.text = fullText
        isTruncated = false
    }

}
