//
//  SocialImageView.swift
//  Authui
//
//  Created by Aashish on 6/3/23.
//

import SwiftUI

struct SocialImageView: View {
    
    var image_name:String
    
    var body: some View {
        Image(image_name)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
            .padding([.leading, .trailing], 10)
    }
}

struct SocialImageView_Previews: PreviewProvider {
    static var previews: some View {
        SocialImageView(image_name: "")
    }
}
