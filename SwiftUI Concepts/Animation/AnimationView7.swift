//
//  AnimationView7.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 23/03/23.
//

import SwiftUI

struct AnimationView7: View {
    let letters = Array("Hello SwiftUI")
       @State private var enabled = false
       @State private var dragAmount = CGSize.zero

       var body: some View {
           HStack(spacing: 0) {
               ForEach(0..<letters.count, id: \.self) { num in
                   Text(String(letters[num]))
                       .padding(5)
                       .font(.title)
                       .fontWeight(.bold)
                       .background(enabled ? .blue : .red)
                       .offset(dragAmount)
                       .animation(.default.delay(Double(num) / 20), value: dragAmount)
               }
           }
           .gesture(
               DragGesture()
                   .onChanged { dragAmount = $0.translation }
                   .onEnded { _ in
                       dragAmount = .zero
                       enabled.toggle()
                   }
           )
       }
}

struct AnimationView7_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView7()
    }
}
