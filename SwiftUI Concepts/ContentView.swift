//
//  ContentView.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 03/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.indigo
                .ignoresSafeArea()
            
            VStack {
                Text("SwiftUI Concepts")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
            }
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
