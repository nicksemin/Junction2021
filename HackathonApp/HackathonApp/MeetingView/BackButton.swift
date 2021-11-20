//
//  BackButton.swift
//  HackathonApp
//
//  Created by Ilia Ershov on 20.11.2021.
//

import SwiftUI

struct BackButton: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image("back_icon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20)
        })
        .frame(minWidth: 0, maxWidth: 25, minHeight: 0, maxHeight: 25)
        
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
            .previewLayout(.sizeThatFits)
    }
}
