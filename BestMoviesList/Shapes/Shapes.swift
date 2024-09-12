//
//  Shapes.swift
//  BestMoviesList
//
//  Created by Юлия Кагирова on 11.09.2024.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        ShrinkingSquares()
            .stroke(lineWidth: 5)
            .foregroundColor(.yellow)
            .frame(width: 300, height: 300 )
    }
}


struct ShrinkingSquares: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        for i in stride(from: 1, through: 150, by: 15.0) {
            let rect = CGRect(x: 0, y: 0, width: rect.width, height: rect.height)
            let insetRect = rect.insetBy(dx: i, dy: i)
            path.addRect(insetRect)
        }
        return path
    }
    
    
}


#Preview {
    Shapes()
}
