//
//  SegmentedPick.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

struct SegmentedPicker: View {
	@Binding private var selection: Int

	private let items: [String]

	init(
		items: [String],
		selection: Binding<Int>
	) {
		self._selection = selection
		self.items = items
	}

	var body: some View {
		// 3. Enumerate through our items, getting a text element through #4
		HStack {
			ForEach(0..<self.items.count, id: \.self) { index in
//				self.getSegmentView(for: index)
			}
		}
		.padding(SegmentedPicker.Constants.PickerPadding)
		.background(SegmentedPicker.Constants.BackgroundColor)
		.clipShape(RoundedRectangle(cornerRadius: SegmentedPicker.Constants.SegmentCornerRadius))
	}
}

