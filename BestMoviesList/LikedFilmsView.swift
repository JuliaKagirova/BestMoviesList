//
//  WatchedFilmsView.swift
//  BestMoviesList
//
//  Created by Юлия Кагирова on 07.09.2024.
//

import SwiftUI

struct LikedFilmsView: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        
        Button("Did you like this film ?") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet, content: {
            SheetView()
        })        
    }
}

struct SheetView: View {

    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        HStack {
           Text("🫶🏻")
                .font(.largeTitle)
            Button("Yes") {
                dismiss()
            }
            .font(.title2).padding()
            .foregroundColor(.white)
        }
        .background(.green)
        .cornerRadius(10)
        .padding(.all, 22)
    }
}

#Preview {
    LikedFilmsView()
}
