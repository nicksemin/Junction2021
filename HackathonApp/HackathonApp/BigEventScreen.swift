//
//  BigEventScreen.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

struct BigEventScreen: View {
	@State private var questionBottomSheetPosition: BottomSheetPosition = .hidden
	@State private var sliderBottomSheetPosition: BottomSheetPosition = .hidden

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
				.onAppear {
					after(4) {
						_sliderBottomSheetPosition.wrappedValue = .middle
					}
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
                    bottomSheetPosition: $sliderBottomSheetPosition
				))
				.modifier(AskQuestionBottomSheetModifier(
					bottomSheetPosition: $questionBottomSheetPosition
				))
		},
		onPlusTap: { self._questionBottomSheetPosition.wrappedValue = .middle })
		
	}
}

struct BigEventScreenPreviewView: PreviewProvider {
	static var previews: some View {
		BigEventScreen()
	}
}
