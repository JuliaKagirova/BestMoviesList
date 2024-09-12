//
//  SettingView.swift
//  BestMovies
//
//  Created by Юлия Кагирова on 03.09.2024.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.colorScheme) var colorScheme 
    @Binding var titleOn: Bool
    @State private var toggler = true

    var body: some View {
        NavigationView {
            Form(content: {
                Section("General") {
                    Toggle(isOn: .constant(true)) {
                        Text("Face ID")
                    }
                    Toggle(isOn: .constant(true)) {
                        Text("VPN")
                    }
                    Text("iCloud")
                }
                
                Section("Appearence") {
                        Text("Theme: ") +
                                Text("\(colorScheme == .dark ? "dark mode" : "light mode")").bold()
                    Toggle("Title ", isOn: $titleOn.animation())
                        .onChange(of: titleOn) {
                            if titleOn {
                                toggler.toggle()
                            }
                        }
                    if titleOn {
                        // some action
                        Text("Navigation title enabled")
                    }
                }
                Section("Notification") {
                    Toggle(isOn: .constant(true), label: {
                        Text("Sound")
                    })
                    Toggle(isOn: .constant(true)) {
                        Text("Badge")
                    }
                }
            })
            .navigationTitle("Settings")
        }
        
    }
}

#Preview {
    SettingView(titleOn: .constant(true))
}
