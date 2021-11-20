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
        
        VStack(spacing: 2) {
            ZStack {
                Image(speaker.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .cornerRadius(8)
                    .padding(.top, 10)
                
                Circle()
                    .strokeBorder(lineWidth: 5, antialiased: true)
                    .foregroundColor(.clear)
                    .shadow(radius: 10)
                    .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 150)
            }
            Text("\(speaker.firstName) \(speaker.lastName)")
                .font(.title2)
            Text("\(speaker.company)")
                .font(.caption)
            Text("\(speaker.position)")
                .font(.caption)
        }
    }
}

struct SpeakerView_Previews: PreviewProvider {

    static var previews: some View {
        SpeakerView(speaker: Speaker.data[0])
            .previewLayout(.sizeThatFits)
    }
}
