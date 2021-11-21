//
//  SliderQuestionBottomSheetModifier.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 21.11.2021.
//

import SwiftUI

enum QuestionWithSliderBottomSheetPosition: CGFloat, CaseIterable {
	case bottom = 0.13
	case middle = 0.795
	case hidden = 0
}

struct SliderQuestionBottomSheetModifier: ViewModifier {
	@State var sliderValue: CGFloat = 0
	@Binding private var bottomSheetPosition: QuestionWithSliderBottomSheetPosition

	init(bottomSheetPosition: Binding<QuestionWithSliderBottomSheetPosition>) {
		self._bottomSheetPosition = bottomSheetPosition
	}

	func body(content: Content) -> some View {
		content
			.bottomSheet(
				bottomSheetPosition: self.$bottomSheetPosition,
				options: [
					.noBottomPosition,
					.allowContentDrag,
					.showCloseButton(),
					.swipeToDismiss,
					.tapToDissmiss,
					.background(Color.white.eraseToAnyView()),
					.cornerRadius(20),
					.shadow(color: Color.black.opacity(0.5), radius: 40, x: 0, y: 0)
				],
				headerContent: {
				VStack(alignment: .leading) {
					Text("Poll Suggested")
						.font(.title).bold()

					Text("by Current Speaker")
						.font(.subheadline).foregroundColor(.secondary)

					Divider()
						.padding(.trailing, -30)
				}
			}) {
				VStack(spacing: 20) {
					Spacer()

					Spacer()

					Text("How likely will you attend our future events?")
						.font(.title).bold()
						.fixedSize(horizontal: false, vertical: true)
						.padding()

					Spacer()

					CustomSlider(value: $sliderValue, range: 1...100)
						.padding()
				}
				.padding([.horizontal, .top])
			}
	}
}
