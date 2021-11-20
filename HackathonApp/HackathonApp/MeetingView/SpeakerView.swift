//
//  SpeakerView.swift
//  HackathonApp
//
//  Created by Ilia Ershov on 20.11.2021.
//

import SwiftUI

struct SpeakerView: View {

    var speaker: Speaker
    
    init(speaker: Speaker) {
        self.speaker = speaker
    }
    
    var body: some View {
        
        VStack {
            ZStack {
                Circle()
                    .strokeBorder(lineWidth: 5, antialiased: true)
                    .foregroundColor(.black)
                    .background(
                        Image(systemName: "person")
                            .padding()
                    )
                    .frame(minWidth: 0, maxWidth: 100, minHeight: 0, maxHeight: 100)
            }
            Text("\(speaker.firstName) \(speaker.lastName)")
                .font(.title)
            Text("\(speaker.position)")
                .font(.callout)
            Text("\(speaker.company)")
                .font(.callout)
        }
    }
}

struct SpeakerView_Previews: PreviewProvider {

    static var previews: some View {
        SpeakerView(speaker: Speaker.data[0])
            .previewLayout(.sizeThatFits)
    }
}
