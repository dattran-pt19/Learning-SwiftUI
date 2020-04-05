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
        VStack(alignment: .center, spacing: 20) {
            ShadowButtonView(title: "Create", image: Image(systemName: "plus.app"))
            ShadowButtonView(title: "Edit")
            ShadowButtonView(title: "Share")
            ShadowButtonView(title: "Delete", image: Image(systemName: "trash"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
