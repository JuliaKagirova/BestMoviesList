//
//  UIBezierPath.swift
//  BestMoviesList
//
//  Created by Юлия Кагирова on 11.09.2024.
//

import SwiftUI

struct BezierView: View {
    var body: some View {
        HStack {
//            BezierShape(bezierPath: .southAfrica)
//                .foregroundColor(.green)
            Text("Africa")
                .font(.title)
            Spacer()
        }
    }
}

struct BezierShape: Shape {
    let bezierPath: UIBezierPath
    
    func path(in rect: CGRect) -> Path {
        return Path(bezierPath.cgPath)
    }
}

#Preview {
    BezierView()
}
