//
//  MeetingFooterView.swift
//  HackathonApp
//
//  Created by Ilia Ershov on 20.11.2021.
//

import SwiftUI

struct MeetingFooterView: View {
    var body: some View {
        Button("Finish speach", action: {})
            .hybrellaDefault()
    }
}

struct MeetingFooterView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingFooterView()
            .previewLayout(.sizeThatFits)
    }
}
