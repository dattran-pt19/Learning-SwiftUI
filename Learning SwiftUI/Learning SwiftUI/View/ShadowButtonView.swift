//
//  ShadowButtonView.swift
//  Learning SwiftUI
//
//  Created by Tran Dat on 4/5/20.
//  Copyright © 2020 Tran Dat. All rights reserved.
//

import SwiftUI

struct ShadowButtonView: View {
    var title: String?
    var image: Image?
    
    var body: some View {
        Button(action: {
            print("Tap button")
        }) {
            HStack {
                image
                    .font(.title)
                    .padding(5)
                Text(title ?? "")
                    .fontWeight(.bold)
                    .font(.title)
            }
        }
        .buttonStyle(GradientButtonStyle())
    }
}

#if DEBUG
struct ShadowButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ShadowButtonView()
    }
}
#endif
