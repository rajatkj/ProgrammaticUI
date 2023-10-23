//
//  CardModel.swift
//  ProgrammaticUI
//
//  Created by Rajat Jangra on 23/10/23.
//

import Foundation

struct CardModel {
    
    var title: String
    var imageURL: String
    var subtitle: String
    var rating: Int
    
    init(title: String, imageURL: String, subtitle: String, rating: Int) {
        self.title = title
        self.imageURL = imageURL
        self.subtitle = subtitle
        self.rating = rating
    }
}
