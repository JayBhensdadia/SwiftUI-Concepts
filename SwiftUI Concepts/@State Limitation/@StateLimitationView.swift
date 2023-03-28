//
//  @StateLimitationView.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 27/03/23.
//

import SwiftUI

class User{
    var firstName = "Biblo"
    var lastName = "Baggins"
}
struct _StateLimitationView: View {
    @State private var user = User()
    var body: some View {
        VStack{
            Text("Your name is : \(user.firstName) \(user.lastName)")
            TextField("First Name : ", text: $user.firstName)
                .padding()
            TextField("Last Name : ", text: $user.lastName)
                .padding()
        }
    }
}

struct _StateLimitationView_Previews: PreviewProvider {
    static var previews: some View {
        _StateLimitationView()
    }
}
