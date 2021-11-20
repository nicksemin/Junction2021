//
//  MeetingSheetView.swift
//  HackathonApp
//
//  Created by Ilia Ershov on 20.11.2021.
//

import SwiftUI

struct MeetingSheetView: View {
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: 230, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("Call is finished!")
                .font(.largeTitle)
                .foregroundColor(.orange)
                .border(Color.black, width: 2)
                .cornerRadius(3.0)
        }
    }
}

struct MeetingSheetView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingSheetView()
    }
}
