//
//  CardTextModifier.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

private struct CardTitleModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.system(size: 26, weight: .bold, design: .default))
	}
}

extension Text {
	func cardTitle() -> some View {
		modifier(CardTitleModifier())
	}
}

private struct CardSubtitleModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.system(size: 16, weight: .light, design: .default))
	}
}

extension Text {
	func cardSubtitle() -> some View {
		modifier(CardSubtitleModifier())
	}
}
