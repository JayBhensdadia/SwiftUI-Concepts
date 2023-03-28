//
//  CodableView.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 28/03/23.
//

import SwiftUI

struct User3 : Codable{
    var firstName : String
    var lastName : String
}
struct CodableView: View {
    @State private var user = User3(firstName: "Taylor", lastName: "Swift")
    var body: some View {
        Button("Save User"){
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user){
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

struct CodableView_Previews: PreviewProvider {
    static var previews: some View {
        CodableView()
    }
}
