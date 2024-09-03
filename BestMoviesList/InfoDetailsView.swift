//
//  InfoDetailsView.swift
//  BestMovies
//
//  Created by Юлия Кагирова on 03.09.2024.
//

import SwiftUI
// статья
struct InfoDetailsView: View {
    var post: Post
    var body: some View {
        ScrollView {
            //full width image
            post.image
                .resizable()
                .scaledToFit()
                .padding(.top, 12)
                .shadow(radius: 10)
                .cornerRadius(.leastNormalMagnitude)
            
            //text description
            VStack(alignment: .leading) {
                Text(post.subTitle)
                    .font(.title3).fontWeight(.bold)
                    .foregroundColor(.indigo)
                
                Divider()
                Text(post.description)
            }
            .padding()
        }
        .navigationTitle(post.title)
        .background (Color(.systemGray6))
    }
}

#Preview(body: {
    InfoDetailsView(post: Post.data[0])
})
