//
//  FormView.swift
//  SwiftUI Concepts
//
//  Created by Jay Bhensdadia on 03/03/23.
//

import SwiftUI

struct FormView: View {
    var body: some View {
        
        //simple Form view (child limit is 10)
        Form{
            Text("Hello World")
            Text("Hello World")
            Text("Hello World")
            Text("Hello World")
            Text("Hello World")
        }
        
        //Form with Groups
        Form{
            Group{
                Text("Hello World")
                Text("Hello World")
            }
            Group{
                Text("Hello World")
                Text("Hello World")
            }
        }
        
        //Form with Sections
        Form{
            
            Section{
                Text("Hello World")
                Text("Hello World")
            }
            Section{
                Text("Hello World")
                Text("Hello World")
            }
        }
        
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
