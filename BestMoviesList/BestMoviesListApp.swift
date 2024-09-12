//
//  BestMoviesListApp.swift
//  BestMoviesList
//
//  Created by Юлия Кагирова on 03.09.2024.
//

import SwiftUI

@main
struct BestMoviesListApp: App {
    
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup { 
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
//        .modelContainer(DataController.container())
    }
}
