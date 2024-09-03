//
//  SettingView.swift
//  BestMovies
//
//  Created by Юлия Кагирова on 03.09.2024.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        Text("Settings")
            .padding(.all, 12)
        
        Form(content: {
            Toggle(isOn: .constant(true)) {
                Text("Face ID")
            }
            Toggle(isOn: .constant(true)) {
                Text("VPN")
            }
            Text("iCloud")
        })
        
        Section("Notification") {
            Toggle(isOn: .constant(true), label: {
                Text("Sound")
                    .padding(12)
                    .padding(.bottom, 10)
            })
            Toggle(isOn: .constant(true)) {
                Text("Badge")
                    .padding(12)
            }
        }
        Section("Appearence") {
            Toggle(isOn: .constant(true), label: {
                Text("Dark Theme")
                    .padding(12)
            })
        }
        .padding(.bottom, 12)
        .cornerRadius(10)
    }
}

#Preview {
    SettingView()
}
