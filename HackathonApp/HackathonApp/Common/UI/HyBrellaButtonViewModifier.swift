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
            .font(.title2)
			.foregroundColor(.white)
			.padding()
            .background(BrellaColor.purple)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(radius: 10)
	}
}

public extension Button {
	func hybrellaDefault() -> some View {
		modifier(HyBrellaButtonViewModifier())
	}
}
