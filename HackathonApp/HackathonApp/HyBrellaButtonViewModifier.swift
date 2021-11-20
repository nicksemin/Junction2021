//
//  HyBrellaButton.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

public struct HyBrellaButtonViewModifier: ViewModifier {
	public func body(content: Content) -> some View {
		content
			.font(.title)
			.foregroundColor(.white)
			.padding()
			.background(Color.orange)
			.clipShape(RoundedRectangle(cornerRadius: 20))
	}
}

public extension Button {
	func hybrellaDefault() -> some View {
		modifier(HyBrellaButtonViewModifier())
	}
}
