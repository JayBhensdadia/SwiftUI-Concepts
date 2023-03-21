//
//  AnimationView2.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 06/03/23.
//

import SwiftUI

struct AnimationView2: View {
    @State private var animationAmount = 1.0
    var body: some View {
        Button("Tap Me") {
            // animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeInOut(duration: 1)
                        .repeatForever(autoreverses: false),
                    value: animationAmount
                )
        )
        .onAppear {
            animationAmount = 2
        }
    }
}

struct AnimationView2_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView2()
    }
}
