//
//  MultipleViews.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 27/03/23.
//

import SwiftUI

struct SecondView : View{
    @Environment(\.dismiss) var dismiss
    let name : String
    
    var body: some View{
        ZStack{
            Color.indigo
            Button(){
                dismiss()
            }label: {
                Text("Hello \(name)! click here to go back")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
            }
                
        }.ignoresSafeArea()
    }
}
struct MultipleViews: View {
    @State private var showingSheet = false
    var body: some View {
        ZStack{
            Color.green
            
            Button(){
                showingSheet.toggle()
            }label: {
                Text("Show the sheet")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
            }
            .sheet(isPresented: $showingSheet){
                SecondView(name: "Jay")
            }
        }
        .ignoresSafeArea()
    }
}

struct MultipleViews_Previews: PreviewProvider {
    static var previews: some View {
        MultipleViews()
    }
}
