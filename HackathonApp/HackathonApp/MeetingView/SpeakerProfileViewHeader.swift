//
//  SpeakerProfileViewHeader.swift
//  HackathonApp
//
//  Created by Ilia Ershov on 21.11.2021.
//

import SwiftUI

struct SpeakerProfileViewHeader: View {
    @Binding var speaker: Speaker
    @State var bookmarkPressed: Bool = false

    var body: some View {
        HStack {
            Image(speaker.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60)
                .cornerRadius(8)
                .padding(.leading)
            VStack {
                Text("\(speaker.firstName) \(speaker.lastName)")
                    .font(.title2)
                Text("\(speaker.company)")
                    .font(.caption)
                Text("\(speaker.position)")
                    .font(.caption)
            }
            Spacer()
            Button(action: {
                bookmarkPressed = !bookmarkPressed
            }, label: {
                let imageName = !bookmarkPressed ? "bookmark" : "bookmark_filled"
                Image(imageName)
                    .padding(.trailing)
            })
        }
    }
}

struct SpeakerProfileViewHeader_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerProfileViewHeader(speaker: .constant(Speaker.data[0]))
            .previewLayout(.sizeThatFits)
    }
}
