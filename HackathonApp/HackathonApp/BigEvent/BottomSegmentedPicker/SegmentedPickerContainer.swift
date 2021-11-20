//
//  SegmentedPickerContainer.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

struct SegmentedPickerContainer: View {
	@State private var selectedIndex = 0

	var body: some View {
		VStack {
			UnderlineSegmentedPicker(
				["My Questions", "All Questions"],
				selectedIndex: Binding(
					get: { selectedIndex },
					set: { selectedIndex = $0 ?? 0 })
			)
			.padding()

			if selectedIndex == 0 {
				Rectangle()
					.foregroundColor(Color.orange)
			}
			if selectedIndex == 1 {
				CategoriesList()
			}

			Spacer()
		}
	}
}

struct PreviewView: PreviewProvider {
	@State static var selectedIndex: Int = 0
	private static let items: [String] = ["My Questions", "All Questions"]
	static var previews: some View {
		SegmentedPickerContainer()
			.padding()
	}

}
