//
//  ButtonStyle.swift
//  Learning SwiftUI
//
//  Created by Tran Dat on 4/5/20.
//  Copyright © 2020 Tran Dat. All rights reserved.
//

import SwiftUI

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                    .padding(.horizontal, 20)
            .shadow(color: configuration.isPressed ? .white : Color.gray, radius: 5, x: 0, y: 5)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
    
    let gradient = Gradient(colors: [Color("RasberryStart"), Color("RasberryStop")])
}
