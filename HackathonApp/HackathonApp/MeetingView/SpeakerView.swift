//
//  SpeakerView.swift
//  HackathonApp
//
//  Created by Ilia Ershov on 20.11.2021.
//

import SwiftUI

struct SpeakerView: View {
    
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
                
//                Image(systemName: "person")
                
            }
        }
    }
}

struct SpeakerView_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerView()
            .previewLayout(.sizeThatFits)
    }
}
