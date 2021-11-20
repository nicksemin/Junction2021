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
		HStack {
			ForEach(0..<self.items.count, id: \.self) { index in
				self.getSegment(for: index)
			}
		}
		.padding(SegmentedPicker.Constants.PickerPadding)
		.background(SegmentedPicker.Constants.BackgroundColor)
		.clipShape(RoundedRectangle(cornerRadius: SegmentedPicker.Constants.SegmentCornerRadius))
	}

	private func getSegment(for index: Int) -> some View {
		guard index < self.items.count else {
			return EmptyView().eraseToAnyView()
		}

		let isSelected = self.selection == index
		return
			Text(self.items[index])
			.foregroundColor(
				isSelected
					? SegmentedPicker.Constants.SelectedTextColor
					: SegmentedPicker.Constants.TextColor
			)
			.lineLimit(1)
			.padding(.vertical, SegmentedPicker.Constants.SegmentYPadding)
			.padding(.horizontal, SegmentedPicker.Constants.SegmentXPadding)
			.frame(minWidth: 0, maxWidth: .infinity)
			.onTapGesture { onTap(index) }
			.eraseToAnyView()
	}

	private func onTap(_ index: Int){
		guard index < self.items.count else {
			return
		}
		self.selection = index
	}
}


struct PreviewView: PreviewProvider {

	@State static var selection: Int = 0
	private static let items: [String] = ["My Questions", "All Questions"]
	static var previews: some View {
		SegmentedPicker(items: self.items, selection: self.$selection)
			.padding()
	}

}
