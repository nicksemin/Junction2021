//
//  MeetingView.swift
//  HackathonApp
//
//  Created by Ilia Ershov on 20.11.2021.
//

import SwiftUI

struct MeetingView: View {
    
    @State var speakers: [Speaker] = Speaker.data

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16.0)
                .fill(Color.gray)
            
            VStack(spacing: 100) {

                CircularProgressBar(speaker: binding(for: speakers))

                VStack {
                    HStack {
                        SpeakerView(speaker: speakers[1])
                        Spacer()
                        SpeakerView(speaker: speakers[2])
                    }
                    .padding()
                    HStack {
                        SpeakerView(speaker: speakers[3])
                        Spacer()
                        SpeakerView(speaker: speakers[4])
                    }
                    .padding()
                    Spacer()
                    Button("Finish speech", action: {
                        speakers.swapAt(0, 1)
                    })
                        .hybrellaDefault()
                }
            }
        }
        .onAppear {
        }
        .onDisappear {
        }
    }
    
    private func binding(for speakers: [Speaker]) -> Binding<Speaker> {
        
        guard let speakerIndex = speakers.firstIndex(where: { $0.isActive }) else {
            fatalError("Can't find scrum in array")
        }
        return $speakers[speakerIndex]
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MeetingView(speakers: Speaker.data)
        }
    }
}
