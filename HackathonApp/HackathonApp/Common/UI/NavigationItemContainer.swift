//
//  NavigationItemContainer.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

struct NavigationItemContainer<Content>: View where Content: View {
	private let content: () -> Content
	@Environment(\.presentationMode) var presentationMode

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
    }
}

	var body: some View {
		content()
			.navigationBarBackButtonHidden(true)
			.navigationBarItems(leading: backButton)
	}

	init(@ViewBuilder content: @escaping () -> Content) {
		self.content = content
	}
}
