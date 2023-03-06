//
//  AnimationView.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 06/03/23.
//

import SwiftUI

struct AnimationView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap me"){
            animationAmount+=1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.default, value: animationAmount)
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
