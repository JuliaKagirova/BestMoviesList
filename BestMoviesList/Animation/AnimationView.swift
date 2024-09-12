//
//  Animation.swift
//  BestMoviesList
//
//  Created by Юлия Кагирова on 11.09.2024.
//

import SwiftUI

struct AnimationView: View {
    
    @State private var scale = 1.0
    
    var body: some View {
        Image(.lalaland)
            .resizable()
            .frame(width: 200, height: 200)
            .cornerRadius(80)
            .shadow(radius: 20)
            .padding(.top, 20)
            .scaleEffect(scale)
            .rotationEffect(Angle(radians: scale))
//            .animation(.easeInOut, value: scale)
            .animation(.interpolatingSpring(mass: 0.5, stiffness: 0.5, damping: 0.5, initialVelocity: 10), value: scale)
            .onTapGesture {
//                self.scale *= CGFloat.random(in: 0.8...1.2)
                withAnimation {
                    self.scale *= 1.1
                }
            }
            
    }
}

#Preview {
    AnimationView()
}
