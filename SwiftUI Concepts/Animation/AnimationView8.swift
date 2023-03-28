//
//  AnimationView8.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 23/03/23.

//Showing and hiding views with transitions

import SwiftUI

struct AnimationView8: View {
    @State private var isShowingRed = false
    var body: some View {
        VStack{
            Button("Tap Me"){
                withAnimation{
                    isShowingRed.toggle()
                }
                
            }
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
            }
        }
    }
}

struct CornerRotateModifier : ViewModifier{
    let amount : Double
    let anchor : UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition{
    static var pivot : AnyTransition{
        .modifier(
            active: CornerRotateModifier(amount: -90, anchor: .topLeading),
            identity: CornerRotateModifier(amount: 0, anchor: .topLeading)
        )
    }
}

struct AnimationView8_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView8()
    }
}

