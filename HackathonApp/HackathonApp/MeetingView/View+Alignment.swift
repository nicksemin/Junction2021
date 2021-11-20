//
//  View+Alignment.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

extension View {
	@ViewBuilder
	@inlinable func alignmentGuide(
		_ alignment: HorizontalAlignment,
		isActive: Bool,
		computeValue: @escaping (ViewDimensions) -> CGFloat
	) -> some View {
		if isActive {
			alignmentGuide(alignment, computeValue: computeValue)
		} else {
			self
		}
	}

	@ViewBuilder
	@inlinable func alignmentGuide(
		_ alignment: VerticalAlignment,
		isActive: Bool,
		computeValue: @escaping (ViewDimensions) -> CGFloat
	) -> some View {

		if isActive {
			alignmentGuide(alignment, computeValue: computeValue)
		} else {
			self
		}
	}
}
