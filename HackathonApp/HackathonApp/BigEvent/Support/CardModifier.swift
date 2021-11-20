//
//  CardModifier.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

struct CardModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.cornerRadius(20)
			.shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 0)
	}
}