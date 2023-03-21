//
//  AnimationView3.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 06/03/23.
//

import SwiftUI

struct AnimationView3: View {
    @State private var animationAmount = 1.0

        var body: some View {
            print(animationAmount)
            return VStack {
                Stepper("Scale amount", value: $animationAmount.animation(
                    .easeInOut(duration: 0.3)
                    .repeatCount(3,autoreverses: true)
                ), in: 1...10)

                Spacer()

                Button("Tap Me") {
                    animationAmount += 1
                }
                .padding(40)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .scaleEffect(animationAmount)
            }
        }
}

struct AnimationView3_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView3()
    }
}
