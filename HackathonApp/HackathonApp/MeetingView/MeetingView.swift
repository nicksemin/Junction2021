//
//  MeetingView.swift
//  HackathonApp
//
//  Created by Ilia Ershov on 20.11.2021.
//

import SwiftUI

struct MeetingView: View {
    
    let speakers = Speaker.data
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16.0)
                .fill(Color.gray)
            
            VStack(spacing: 100) {
                SpeakerView()
                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                VStack {
                    HStack {
                        SpeakerView()
                        Spacer()
                        SpeakerView()
                    }
                    .padding()
                    HStack {
                        SpeakerView()
                        Spacer()
                        SpeakerView()
                    }
                    .padding()
                    Spacer()
                    MeetingFooterView()
                }
            }
                
                
                
                
        }
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MeetingView()
        }
    }
}
