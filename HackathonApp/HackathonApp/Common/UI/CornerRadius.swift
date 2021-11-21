//
//  CornerRadius.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 21.11.2021.
//

import SwiftUI

fileprivate struct CornerRadius: Shape {

	fileprivate var radius: CGFloat = .infinity
	fileprivate var corners: UIRectCorner = .allCorners


	fileprivate func path(in rect: CGRect) -> Path {
		let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
		return Path(path.cgPath)
	}
}

internal extension View {
	func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
		clipShape(CornerRadius(radius: radius, corners: corners))
	}
}

struct RoundedCorner_Previews: PreviewProvider {
	static var previews: some View {
		Rectangle()
			.cornerRadius(20, corners: [.topLeft, .topRight])
	}
}
