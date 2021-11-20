//
//  UnderlineSegmentedPicke.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

struct UnderlineSegmentedPicker: View {
	let titles: [String]
	@Binding private var selectedIndex: Data.Index?

	init(
		_ titles: [String],
		selectedIndex: Binding<Data.Index?>
	) {
		self.titles = titles
		self._selectedIndex = selectedIndex
	}

	var body: some View {
		SegmentedPicker(
			titles,
			selectedIndex: Binding(
				get: { selectedIndex },
				set: { selectedIndex = $0 ?? 0 }),
			content: { item, isSelected in
				Text(item)
					.foregroundColor(.black)
					.fontWeight(isSelected ? .bold : .thin)
					.padding(.horizontal, 16)
					.padding(.vertical, 8)
			},
			selection: {
				VStack(spacing: 0) {
					Spacer()
					Rectangle()
						.fill(Color.green)
						.frame(height: 1.5)
				}
			})
			.animation(.easeInOut(duration: 0.3))
	}
}
