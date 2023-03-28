//
//  AnimationView6.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 23/03/23.
//

import SwiftUI

struct AnimationView6: View {
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.yellow,.red]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300,height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged{dragAmount = $0.translation}
                    .onEnded{_ in
                        withAnimation(.spring()){
                            dragAmount = .zero
                        }
                    }
            )
            
            
    }
}

struct AnimationView6_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView6()
    }
}
