//
//  TextFielder.swift
//  BestMoviesList
//
//  Created by Юлия Кагирова on 07.09.2024.
//

import SwiftUI

struct TextFielder: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: 50)
            .padding(.leading, 12)
            .border(Color(UIColor.lightGray), width: 0.5)
            .background(Color(.systemGray6))
    }
}
