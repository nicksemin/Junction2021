//
//  MeetingView.swift
//  HackathonApp
//
//  Created by Ilia Ershov on 20.11.2021.
//

import SwiftUI

struct MeetingView: View {
    
    @State var speakers: [Speaker] = Speaker.data
    @State var numberOfSpeaker: Int = 0
    @State var showFinishSheet: Bool = false
    @State var showSpeakerSheet: Bool = false

    var body: some View {
        VStack {
            ZStack {
                BackButton()
                    .padding(.leading, -180)
                    .padding(.top, -373)
                
                VStack(spacing: 55) {
                    Text("Speaking")
                        .font(.title)
                    
                        Button(action: { showSpeakerSheet = !showSpeakerSheet },
                               label: {
                                CircularProgressBar(speaker: binding(for: speakers))
                                    .offset(x: 0, y: -20.0)
                           })
                        .foregroundColor(.black)
                    
                    VStack {
                        HStack {
                            SpeakerView(speaker: speakers[1])
                            SpeakerView(speaker: speakers[2])
                        }
                        
                        HStack {
                            SpeakerView(speaker: speakers[3])
                            SpeakerView(speaker: speakers[4])
                        }
                        Spacer()
                    }
                    .offset(x: 0, y: -50.0)
                }
            }

            Button("      Finish speech      ", action: {
                if numberOfSpeaker < 4 {
                    speakers.swapAt(0, numberOfSpeaker + 1)
                    self.numberOfSpeaker += 1
                } else {
                    self.showFinishSheet = true
                }
            })
            .hybrellaDefault()
            .sheet(isPresented: $showFinishSheet) { MeetingSheetView() }
        }
        .sheet(isPresented: $showSpeakerSheet) {
              SpeakerInfoView()
            }
    }
    
    private func binding(for speakers: [Speaker]) -> Binding<Speaker> {
        
        guard let speakerIndex = speakers.firstIndex(where: { $0.isActive }) else {
            fatalError("Can't find speaker in array")
        }
        return $speakers[speakerIndex]
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
            MeetingView(speakers: Speaker.data)
    }
}
