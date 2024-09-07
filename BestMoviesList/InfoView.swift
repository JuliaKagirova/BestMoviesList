//
//  InfoView.swift
//  BestMovies
//
//  Created by Юлия Кагирова on 03.09.2024.
//

import SwiftUI

struct InfoView : View {
    
    var titleOn: Bool
    
    var body: some View {
        
        NavigationView {
            
            List(Post.data) { post in
                
                NavigationLink { //стрелочка "а что в ячейке"
                    
                    InfoDetailsView(post: post)
                    
                } label: {
                    
                    InfoRowView(post: post)
                }
            }
            .navigationTitle( titleOn ? "Best Movies" : "")
            .listStyle(.plain)
        }
    }
}

#Preview {
    InfoView(titleOn: true)
}
