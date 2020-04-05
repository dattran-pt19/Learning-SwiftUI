//
//  ContentView.swift
//  Learning SwiftUI
//
//  Created by Tran Dat on 4/5/20.
//  Copyright © 2020 Tran Dat. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TextFieldView(title: "Account", placeholder: "Type your account") { (text) in
                print(text)
            }
            
            TextFieldView(title: "Password", placeholder: "Type your password") { (text) in
                print(text)
            }
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
