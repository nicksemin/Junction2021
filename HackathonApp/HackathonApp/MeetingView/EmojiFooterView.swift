//
//  EmojiFooterView.swift
//  HackathonApp
//
//  Created by Ilia Ershov on 21.11.2021.
//

import SwiftUI

struct EmojiFooterView: View {
    var body: some View {
        ZStack {
            HStack {
                Image("like_emoji")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                    .cornerRadius(25)
                Image("smile1_emoji")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                    .cornerRadius(25)
                Image("smile2_emoji")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                    .cornerRadius(25)
                Image("smile3_emoji")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                    .cornerRadius(25)
                Image("smile4_emoji")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                    .cornerRadius(25)
            }
        }
        .padding()
        .background(BrellaColor.purple)
    }
}

struct EmojiFooterView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiFooterView()
            .previewLayout(.sizeThatFits)
    }
}
