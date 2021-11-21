//
//  SpeakerProfileView.swift
//  HackathonApp
//
//  Created by Ilia Ershov on 21.11.2021.
//

import SwiftUI

struct SpeakerProfileView: View {
    @Binding var speaker: Speaker
    
    var body: some View {
        VStack{
            VStack(alignment: .leading) {
                SpeakerProfileViewHeader(speaker: $speaker)
                    .padding(.top)
                Text("Introduction")
                    .font(.title2)
                    .padding([.leading, .top])
                Text("Hi! I would like to meet new people at this event.")
                    .font(.subheadline)
                    .padding([.leading, .bottom])

                Text("Networking about")
                    .font(.title2)
                    .padding([.leading, .top])
                Text("""
                    Mentoring
                    Brainstorming
                    Service design
                    """)
                    .font(.subheadline)
                    .padding([.leading, .bottom])
            }
            Button("Suggest meeting", action: {})
                .hybrellaDefault()
                .padding(.bottom)
        }
    }
}

struct SpeakerProfileView_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerProfileView(speaker: .constant(Speaker.data[0]))
            .previewLayout(.sizeThatFits)
    }
}
