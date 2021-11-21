//
//  AskQuestionBottomSheetModifier.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 21.11.2021.
//

import SwiftUI

struct AskQuestionBottomSheetModifier: ViewModifier {
	@State var sliderValue: CGFloat = 0
	@Binding private var bottomSheetPosition: BottomSheetPosition

	init(bottomSheetPosition: Binding<BottomSheetPosition>) {
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
					Text("Question")
						.font(.title).bold()

					Text("Provide a question to current speaker")
						.font(.subheadline).foregroundColor(.secondary)

					Divider()
						.padding(.trailing, -30)
				}
			}) {
				VStack(alignment: .center) {
					Spacer()
					
					Text("Enter you question here")
						.cardTitle()
						.foregroundColor(.black)
						.background(
							RoundedRectangle(
								cornerRadius: 40,
								style: .continuous
							)
							.fill(Color.white)
							.frame(width: 400, height: 200)
							.modifier(CardModifier())
						)



					Text("Your text is here")
						.cardSubtitle()
						.foregroundColor(.gray)

					Spacer()


					Button("Ask question", action: { _bottomSheetPosition.wrappedValue = .hidden })
						.hybrellaDefault()
						.frame(maxWidth: .infinity)
						.padding(.horizontal, 24)

				}.padding()
			}
	}
}
