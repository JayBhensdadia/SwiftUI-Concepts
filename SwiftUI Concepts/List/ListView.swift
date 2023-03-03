//
//  ListView.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 03/03/23.
//

import SwiftUI

struct ListView: View {
    
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        List(people, id: \.self) {
            Text($0)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
