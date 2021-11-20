//
//  SegmentedPicker.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

extension SegmentedPicker {
	enum Constants {
		static let ActiveSegmentColor = Color(.tertiarySystemBackground)
		static let BackgroundColor = Color(.secondarySystemBackground)
		static let ShadowColor = Color.black.opacity(0.2)
		static let TextColor = Color(.secondaryLabel)
		static let SelectedTextColor = Color(.label)
		static let TextFont: Font = .system(size: 12)

		static let SegmentCornerRadius: CGFloat = 12
		static let ShadowRadius: CGFloat = 4
		static let SegmentXPadding: CGFloat = 16
		static let SegmentYPadding: CGFloat = 8
		static let PickerPadding: CGFloat = 4

		static let AnimationDuration: Double = 0.1
	}
}
