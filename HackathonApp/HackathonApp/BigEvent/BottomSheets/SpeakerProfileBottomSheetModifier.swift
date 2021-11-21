//
//  SpeakerProfileBottomSheetModifier.swift
//  HackathonApp
//
//  Created by Ilia Ershov on 21.11.2021.
//

import SwiftUI

struct SpeakerProfileBottomSheetModifier: ViewModifier {
    @Binding private var bottomSheetPosition: QuestionWithSliderBottomSheetPosition
    @Binding private var speaker: Speaker

    init(bottomSheetPosition: Binding<QuestionWithSliderBottomSheetPosition>,
         speaker: Binding<Speaker>) {
        self._bottomSheetPosition = bottomSheetPosition
        self._speaker = speaker
    }

    func body(content: Content) -> some View {
        content
            .bottomSheet(bottomSheetPosition: self.$bottomSheetPosition,
                         options: [
                            .noBottomPosition,
                            .allowContentDrag,
                            .swipeToDismiss,
                            .tapToDissmiss,
                            .background(Color.white.eraseToAnyView()),
                            .cornerRadius(20),
                            .shadow(color: Color.black.opacity(0.5), radius: 40, x: 0, y: 0)
                        ],
                         content: {
                            SpeakerProfileView(speaker: $speaker)
                            .padding([.horizontal])
                         })
    }
}

//struct SpeakerProfileBottomSheetModifier_Previews: PreviewProvider {
//    static var previews: some View {
//        SpeakerProfileBottomSheetModifier(bottomSheetPosition: .constant(.profile), speaker: .constant(Speaker.data[0]))
//    }
//}
