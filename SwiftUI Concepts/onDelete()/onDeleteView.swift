//
//  onDeleteView.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 27/03/23.
//

import SwiftUI

struct onDeleteView: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(numbers, id: \.self){
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                Button("Add Number"){
                    numbers.append(currentNumber)
                    currentNumber+=1
                }
            }
            .toolbar{
                EditButton()
            }
        }
    }
    func removeRows(at offsets: IndexSet){
        numbers.remove(atOffsets: offsets)
    }
}

struct onDeleteView_Previews: PreviewProvider {
    static var previews: some View {
        onDeleteView()
    }
}
