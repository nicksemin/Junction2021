//
//  CircularProgressBar.swift
//  HackathonApp
//
//  Created by Ilia Ershov on 20.11.2021.
//

import SwiftUI

struct CircularProgressBar: View {
    @State var circleProgress: CGFloat = 0.0
    @Binding var speaker: Speaker
    
    init(speaker: Binding<Speaker>) {
        self._speaker = speaker
    }
    
    var body: some View {
        VStack {
            ZStack {
                Image(speaker.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .cornerRadius(8)
                    .padding(.top, 10)
                
                Circle()
                    .stroke(Color.clear, lineWidth: 15)
                    .frame(width: 150, height: 150)
                
                Circle()
                    .trim(from: 0.0, to: circleProgress)
                    .stroke(Color.green, lineWidth: 15)
                    .frame(width: 150, height: 150)
                    .rotationEffect(Angle(degrees: -90))
            }
            Text("\(speaker.firstName) \(speaker.lastName)")
                .font(.title)
            Text("\(speaker.position)")
                .font(.callout)
            Text("\(speaker.company)")
                .font(.callout)
        }
        .onAppear {
            startLoading()
        }
        .onChange(of: speaker, perform: { _ in
            circleProgress = 0
        })
    }
    
    func startLoading() {
        _ = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            withAnimation() {
                self.circleProgress += 0.01
                if self.circleProgress >= 1.0 {
                    timer.invalidate()
                }
            }
        }
    }
}

struct CircularProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        let speaker = Speaker.data[0]
        CircularProgressBar(speaker: .constant(speaker))
    }
}
