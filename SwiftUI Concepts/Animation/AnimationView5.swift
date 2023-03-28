//
//  AnimationView5.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 23/03/23.
//

//Controlling the animation stack

import SwiftUI

struct AnimationView5: View {
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .foregroundColor(.white)
        .animation(.default, value: enabled)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
        
    }
}

struct AnimationView5_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView5()
    }
}
