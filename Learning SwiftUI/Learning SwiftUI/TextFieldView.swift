//
//  TextFieldView.swift
//  Learning SwiftUI
//
//  Created by Tran Dat on 4/5/20.
//  Copyright © 2020 Tran Dat. All rights reserved.
//

import SwiftUI

struct TextFieldView: View {
    var title: String = ""
    var placeholder: String = ""
    @State var text: String = ""
    @State var isChanging: Bool = false
    @State var isSecure: Bool = true
    
    var onChanged: ((_ change: Bool) -> Void)? = nil
    var onCommit: ((_ text: String) -> Void)? = nil
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text(title)
                    .foregroundColor(isChanging ? Color("RasberryStart") : .black)
                    .font(.callout).bold()
                    .padding(.leading, 20)
                    .scaleEffect(isChanging ? 1.2 : 1.0)
                
                Spacer(minLength: 50)
                
                Toggle(isOn: $isSecure, label: {
                    Text("Secure")
                })
                    .toggleStyle(SwitchToggleStyle())
                    .padding(.trailing, 20)
                .foregroundColor(Color("RasberryStart"))
            }
            
            if isSecure {
                SecureField(placeholder, text: $text, onCommit: {
                    self.onCommit?(self.text)
                })
                    .foregroundColor(.red)
                    .font(.system(.body, design: .rounded))
                    .padding(16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(isChanging ? Color("RasberryStart") : .gray, lineWidth: 1)
                )
                    .padding(.horizontal, 20)
            } else {
                TextField(placeholder, text: $text, onEditingChanged: { change in
                    self.isChanging = change
                    self.onChanged?(change)
                }, onCommit: {
                    self.onCommit?(self.text)
                })
                    .foregroundColor(.red)
                    .font(.system(.body, design: .rounded))
                    .padding(16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(isChanging ? Color("RasberryStart") : .gray, lineWidth: 1)
                )
                    .padding(.horizontal, 20)
            }
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
