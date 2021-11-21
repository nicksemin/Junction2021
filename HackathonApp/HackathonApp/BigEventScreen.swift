//
//  BigEventScreen.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

struct BigEventScreen: View {
	@State private var bottomSheetPosition: QuestionWithSliderBottomSheetPosition = .hidden

	var body: some View {
		NavigationAndPlusItemContainer(content: {
				VStack {
					EventProfileView(model: profile)
					SegmentedPickerContainer()
						.frame(
							minWidth: 0,
							maxWidth: .infinity,
							minHeight: 600,
							maxHeight: 600,
							alignment: .topLeading
						)
				}
				.padding(.top, 60)
				.background(
					LinearGradient(
						gradient: Gradient(colors: [BrellaColor.green, BrellaColor.purple, BrellaColor.purple, BrellaColor.purple]),
						startPoint: .top,
						endPoint: .bottom
					)
				)
				.cornerRadius(40)
				.ignoresSafeArea()
                .modifier(SliderQuestionBottomSheetModifier(
                                    bottomSheetPosition: $bottomSheetPosition
				))
		},
		onPlusTap: { self._bottomSheetPosition.wrappedValue = .middle })
		
	}
}

struct BigEventScreenPreviewView: PreviewProvider {
	static var previews: some View {
		BigEventScreen()
	}
}
