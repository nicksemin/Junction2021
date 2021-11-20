//
//  NavigationAndPlusItemContainer.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

struct NavigationAndPlusItemContainer<Content>: View where Content: View {
	private let content: () -> Content
	@Environment(\.presentationMode) var presentationMode

	private var plusButton : some View { Button(action: {}) {
		ZStack {
			Image("plus")
				.aspectRatio(contentMode: .fit)
				.background(
					RoundedRectangle(cornerRadius: 8, style: .continuous)
						.fill(Color.white)
						.frame(width: 40, height: 40)

				)
		}
	}}

	private var backButton : some View { Button(action: {
		self.presentationMode.wrappedValue.dismiss()
	}) {
		ZStack {
			Image("back")
				.aspectRatio(contentMode: .fit)
				.background(
					RoundedRectangle(cornerRadius: 8, style: .continuous)
						.fill(Color.white)
						.frame(width: 40, height: 40)

				)
		}
	}}

	var body: some View {
		content()
			.navigationBarBackButtonHidden(true)
			.navigationBarItems(leading: backButton, trailing: plusButton)
	}

	init(@ViewBuilder content: @escaping () -> Content) {
		self.content = content
	}
}
