//
//  AppBundleView.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 04/03/23.
//

import SwiftUI

struct AppBundleView: View {
    var body: some View {
        
        if let fileURL = Bundle.main.url(forResource: "SomeFile", withExtension: "txt"){
           
            if let fileContents = try? String(contentsOf: fileURL){
                //we loaded the file into a string
                Text(fileContents)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .fontWeight(.bold)
            }
            
        }
        
        
    }
}

struct AppBundleView_Previews: PreviewProvider {
    static var previews: some View {
        AppBundleView()
    }
}
