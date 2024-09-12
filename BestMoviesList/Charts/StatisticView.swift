//
//  StatisticView.swift
//  BestMoviesList
//
//  Created by Юлия Кагирова on 11.09.2024.
//

import SwiftUI
import Charts

struct StatisticView: View {
    
    var data = [
        GenresOfMovie(genre: "Fantasy", number: 0.1),
        GenresOfMovie(genre: "Action", number: 0.1),
        GenresOfMovie(genre: "Thrillers", number: 0.1),
        GenresOfMovie(genre: "Musical", number: 0.2),
        GenresOfMovie(genre: "Detectives", number: 0.2),
        GenresOfMovie(genre: "Cartoon", number: 0.3)
    ]
    
    var body: some View {
        NavigationView {
            Chart {
                ForEach(data) { datum in
                    SectorMark(angle: .value("Number", datum.number),
                               innerRadius: .ratio(0.5),
                               angularInset: 2)
                    .foregroundStyle(by: .value("Genre", datum.genre))
                    .cornerRadius(5)
                    .annotation(position: .overlay) {
                        Text("\(Int(datum.number * 100))%")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                }
            }
            .navigationTitle("Genres of movies")
            .padding(.top, 20)
            .padding(.bottom, 40)
            Spacer()
        }
        .padding(.all, 16)
    }
}

#Preview {
    StatisticView()
}
