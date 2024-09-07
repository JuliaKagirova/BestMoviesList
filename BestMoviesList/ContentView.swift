//
//  ContentView.swift
//  BestMovies
//
//  Created by Юлия Кагирова on 02.09.2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @AppStorage("titleOn") private var titleOn: Bool = false
    
    var body: some View {
        TabView() {
            //Best
            InfoView(titleOn: titleOn)
                .tabItem {
                    Label("Best", systemImage: "movieclapper")
                }
            //Liked
            LikedFilmsView()
                .tabItem {
                    Label("Liked", systemImage: "heart")
                }
            //Settings
            SettingView(titleOn: $titleOn)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}

