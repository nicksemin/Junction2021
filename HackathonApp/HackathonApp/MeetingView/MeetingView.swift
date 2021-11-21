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
    @State var indexOfSpeakerToShow: Int = 0
    @State var showSpeakerSheet: Bool = false
    @State private var bottomSheetPosition: QuestionWithSliderBottomSheetPosition = .hidden
    private let onPlusTap: () -> Void = {}

    var body: some View {
        NavigationItemContainer {
            VStack {
                VStack(spacing: 55) {
                    Text("Speaking")
                        .font(.title)
                    
                    Button(action: {
                        bottomSheetPosition = .profile
                        showSpeakerSheet = !showSpeakerSheet
                        indexOfSpeakerToShow = 0
                    },
                           label: {
                            CircularProgressBar(speaker: binding(for: speakers))
                                .offset(x: 0, y: -20.0)
                       })
                    .foregroundColor(.black)
                    
                    VStack {
                        HStack {
                            Button(action: {
                                bottomSheetPosition = .profile
                                indexOfSpeakerToShow = 1
                            },
                                   label: {
                                    SpeakerView(speaker: speakers[1])
                               })
                            .foregroundColor(.black)
                            
                            Button(action: {
                                bottomSheetPosition = .profile
                                indexOfSpeakerToShow = 2
                            },
                                   label: {
                                    SpeakerView(speaker: speakers[2])
                               })
                            .foregroundColor(.black)
                        }
                        
                        HStack {
                            Button(action: {
                                bottomSheetPosition = .profile
                                indexOfSpeakerToShow = 3
                            },
                                   label: {
                                    SpeakerView(speaker: speakers[3])
                               })
                            .foregroundColor(.black)
                            Button(action: {
                                bottomSheetPosition = .profile
                                indexOfSpeakerToShow = 4
                            },
                                   label: {
                                    SpeakerView(speaker: speakers[4])
                               })
                            .foregroundColor(.black)
                        }
                        Spacer()
                    }
                    .offset(x: 0, y: -50.0)
                }
            }
            .ignoresSafeArea()
            
            
            if numberOfSpeaker == 0 {
                Button("      Finish speech      ", action: {
                    if numberOfSpeaker < 4 {
                        speakers.swapAt(0, numberOfSpeaker + 1)
                        self.numberOfSpeaker += 1
                    }
                })
                .hybrellaDefault()
            } else {
                EmojiFooterView()
                    .cornerRadius(10.0)
                    .frame(maxHeight: 100)
            }
        }
        .modifier(SpeakerProfileBottomSheetModifier(
                            bottomSheetPosition: $bottomSheetPosition,
            speaker: $speakers[indexOfSpeakerToShow]
        ))
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
