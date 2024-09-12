//
//  StarsScene.swift
//  BestMoviesList
//
//  Created by Юлия Кагирова on 10.09.2024.
//

import SwiftUI
import SpriteKit

final class StarsScene: SKScene {
    override func didMove(to view: SKView) {
        let bg = SKSpriteNode(color: .clear, size: size)
        
        let width = Float(size.width)
        let height = Float(size.height)
        let v3 = vector_float3(width, height, Float(0.0))
        let iResolution = SKUniform(name: "iResolution", vectorFloat3: v3)
        let random_Pos = vector_float2(
            width * Float.random(in: 0...1), //x
            height * Float.random(in: 0...1) //y
        )
        let uniforms: [SKUniform] = [
            iResolution,
            SKUniform(name: "iMouse", vectorFloat2: random_Pos),
            SKUniform(name: "iter", float: Float(10)),
            SKUniform(name: "formuparam", float: Float(0.35)),
            SKUniform(name: "speed", float: Float(0.1))
        ]
//        let code = starsShader //try: warpShader
//        bg.shader = SKShader(source: code, uniforms: uniforms)
        bg.position = CGPoint(x: size.width/2, y: size.height/2)
        self.addChild(bg)
    }
}
