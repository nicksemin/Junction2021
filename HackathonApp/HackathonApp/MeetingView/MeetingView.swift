//
//  MeetingView.swift
//  HackathonApp
//
//  Created by Ilia Ershov on 20.11.2021.
//

import SwiftUI

struct MeetingView: View {
    
    @Binding var speakers: [Speaker]
//    let speakers = Speaker.data
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16.0)
                .fill(Color.gray)
            
            VStack(spacing: 100) {
                let speaker = speakers[0]
//                SpeakerView(speaker: binding(for: speaker))
                CircularProgressBar(speaker: binding(for: speakers))

                VStack {
                    HStack {
                        SpeakerView(speaker: speaker)
                        Spacer()
                        SpeakerView(speaker: speaker)
                    }
                    .padding()
                    HStack {
                        SpeakerView(speaker: speaker)
                        Spacer()
                        SpeakerView(speaker: speaker)
                    }
                    .padding()
                    Spacer()
                    MeetingFooterView()
                }
            }
        }
        .onAppear {
        }
        .onDisappear {
        }
    }
    
    private func binding(for speakers: [Speaker]) -> Binding<[Speaker]> {
        guard let speakerIndex = speakers.firstIndex(where: { $0.isActive == true }) else {
            fatalError("Can't find active user in array")
        }
        return $speakers[speakerIndex]
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MeetingView(speakers: .constant(Speaker.data))
        }
    }
}
