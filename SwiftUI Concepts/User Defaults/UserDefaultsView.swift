//
//  UserDefaultsView.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 27/03/23.
//

import SwiftUI
import Foundation

struct UserDefaultsView: View {
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    @AppStorage("tapCount") private var tapCount2 = 0
    
    var body: some View {
        Button(){
            tapCount+=1
            tapCount2+=1
            UserDefaults.standard.set(self.tapCount, forKey: "Tap")
        }label: {
            Text("Tap count1 = \(tapCount) Tap count2 = \(tapCount2)")
                .font(.largeTitle)
                .fontWeight(.heavy)
        }
    }
}

struct UserDefaultsView_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultsView()
    }
}
