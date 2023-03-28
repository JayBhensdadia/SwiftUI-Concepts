//
//  AnimationView1.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 23/03/23.
//

import SwiftUI

struct AnimationView1: View {
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
//        default : (easeInOut)
//        .animation(.default, value: animationAmount)
//
//        easeOut
//        .animation(.easeOut, value: animationAmount)
        
//        interpolatingSpring
//        .animation(
//            .interpolatingSpring(stiffness: 80, damping: 1),
//            value: animationAmount)
//
//        duration specified animation
//        .animation(
//            .easeInOut(duration: 2)
//            .delay(1),
//            value: animationAmount
//
//        )
        
//        //repeating animation
//        .animation(
//            .easeInOut(duration: 1)
//            .repeatCount(3,autoreverses: true),
//            value: animationAmount
//        )
//
        
        //continuous animation
        .animation(
            .easeInOut(duration: 1)
            .repeatForever(autoreverses: true),
            value: animationAmount
        )
    }
}

struct AnimationView1_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView1()
    }
}
