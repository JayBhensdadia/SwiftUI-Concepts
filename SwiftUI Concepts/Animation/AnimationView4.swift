//
//  AnimationView4.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 23/03/23.
//

//EXPLICIT ANIMATIONS

import SwiftUI

struct AnimationView4: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        VStack{
            ForEach(0..<3){number in
                Button("Tap Me"){

                    withAnimation{
                        animationAmount+=360
                    }
                }
                .padding(50)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .rotation3DEffect(.degrees(animationAmount), axis: (x:1, y:1, z:1))

            }
        }
//        Button("Tap me"){
//            withAnimation{
//                animationAmount+=360
//            }
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundColor(.white)
//        .clipShape(Circle())
//        .rotation3DEffect(.degrees(animationAmount), axis: (x:1, y:1, z:1))
    }
}

struct AnimationView4_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView4()
    }
}
