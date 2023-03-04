//
//  StringsView.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 04/03/23.
//

import SwiftUI

struct StringsView: View {
    var body: some View {
        let str = """
            a
            b
            c
            """
        let arr = str.components(separatedBy: "\n")
        List(arr,id: \.self){
            Text($0)
        }
        let trimmed = str.trimmingCharacters(in: .whitespacesAndNewlines)
        Text(trimmed)
        
        //checking the spelling
        
        //step:1 creating instance of UITextChecker
        let word = "swift"
        let checker = UITextChecker()
        
        //step:2 creating range for objective-C function to understand
        //mordern strings used by swiftUI
        
        let range = NSRange(location: 0,length: word.utf16.count)
        
        //step:3 passing all that to method of UITextChecker
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        //step:4 checking for what checker returned
        //if it has returned NSNotFound that means spelling was correct
        let allgood = misspelledRange.location == NSNotFound
        Text(String(allgood))
        
    }
}

struct StringsView_Previews: PreviewProvider {
    static var previews: some View {
        StringsView()
    }
}
