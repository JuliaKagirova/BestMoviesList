//
//  DataPoint.swift
//  BestMoviesList
//
//  Created by Юлия Кагирова on 12.09.2024.
//

import SwiftUI

struct GenresOfMovie: Identifiable {
    var id = UUID().uuidString
    var name: String
    var genre: String
    var year: Int
    var type: String = "Night"
    
}
