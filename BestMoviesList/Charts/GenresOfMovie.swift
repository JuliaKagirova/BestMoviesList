//
//  GenresOfMovie.swift
//  BestMoviesList
//
//  Created by Юлия Кагирова on 12.09.2024.
//

import SwiftUI

struct GenresOfMovie: Identifiable {
    var id = UUID().uuidString
    var genre: String
    var number: Float
}

