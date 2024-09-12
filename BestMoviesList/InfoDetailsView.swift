//
//  InfoDetailsView.swift
//  BestMovies
//
//  Created by Юлия Кагирова on 03.09.2024.
//

import SwiftUI
// статья
struct InfoDetailsView: View {
    
    @State private var showingAlert = false
    
    var post: Post
    
    var body: some View {
        
        ScrollView {    //full width image
            Text("Musical")
            Spacer(minLength: 12)
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
            
            .navigationTitle(post.title)
            .background (Color(.systemGray6))
            
            Button("Like") {
                showingAlert = true
            }
            .padding(.all, 12)
            .border(.yellow, width: 2)
            .cornerRadius(10)
            
            .font(.title3).fontWeight(.bold)
            .foregroundColor(.indigo)
            .padding()
            .alert("You liked this film", isPresented: $showingAlert) {
                Button("Perfect", role: .cancel) { }
            }
        }
    }
}

#Preview(body: {
    InfoDetailsView(post: Post.data[0])
})
