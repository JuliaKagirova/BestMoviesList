//
//  EffectSandbox.swift
//  BestMoviesList
//
//  Created by Юлия Кагирова on 10.09.2024.
//

import SwiftUI
import SpriteKit

struct EffectSandbox: View {
    
    @State private var range = 1.0
    
    let startDate = Date()
    var shader: Shader {
        switch range {
        case 0...1:
            ShaderLibrary.checkerboard(.float(5/range), .color(.gray))
        default:
            ShaderLibrary.noise(.float(startDate.timeIntervalSinceNow))
        }
    }
    var body: some View {
        ZStack {
            GeometryReader(content: { geometry in
                SpriteView(scene: StarsScene(size: geometry.size)).frame(width: geometry.size.width, height: geometry.size.height)
            })
            .ignoresSafeArea(edges: [.top])
        }
    }
}

#Preview {
    EffectSandbox()
}
