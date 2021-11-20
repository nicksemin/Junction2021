//
//  SizeProvidingModifier.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

struct SizeProvidingViewModifier: ViewModifier {

	@Binding private var viewSize: CGSize

	init(viewSize: Binding<CGSize>) {
		self._viewSize = viewSize
	}

	func body(content: Content) -> some View {
		content
			.background(BackgroundGeometryReader())
			.onPreferenceChange(
				SizePreferenceKey.self,
				perform: { if self.viewSize != $0 { self.viewSize = $0 }}
			)
	}
}
