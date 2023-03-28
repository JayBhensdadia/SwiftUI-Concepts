//
//  @StateObjectView.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 27/03/23.
//

import SwiftUI

class User2 : ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}

struct _StateObjectView: View {
    @StateObject var user = User2()

       var body: some View {
           VStack {
               Text("Your name is \(user.firstName) \(user.lastName).")

               TextField("First name", text: $user.firstName)
               TextField("Last name", text: $user.lastName)
           }
       }
}

struct _StateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        _StateObjectView()
    }
}
