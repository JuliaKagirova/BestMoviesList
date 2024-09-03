//
//  ContentView.swift
//  BestMovies
//
//  Created by Юлия Кагирова on 02.09.2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        TabView() {
            InfoView()
                .tabItem {
                    Label("Best", systemImage: "movieclapper")
                }
            
            Text("You watched this film!")
                .tabItem {
                    Label("Watched", systemImage: "checkmark.seal")
                }
            
            Text("Profile")
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}

