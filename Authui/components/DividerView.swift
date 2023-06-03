//
//  DividerView.swift
//  Authui
//
//  Created by Aashish on 6/3/23.
//

import SwiftUI

struct DividerView: View {
    var body: some View {
        Rectangle()
            .frame(width: 70, height: 0.3)
            .background(Color.secondary.opacity(0.1))
    }
}

struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        DividerView()
    }
}
