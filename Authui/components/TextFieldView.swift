//
//  TextFieldView.swift
//  Authui
//
//  Created by Aashish on 6/3/23.
//

import SwiftUI

struct TextFieldView: View {
    
    var name:String
    @State var text: String
    
    var body: some View {
        TextField(name, text: $text)
            .font(.system(size: 14))
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding([.bottom], 5)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(name: "", text: "")
    }
}
