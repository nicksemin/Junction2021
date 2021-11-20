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
			.padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))

			if selectedIndex == 0 {
				QuestionsList()
			}
			if selectedIndex == 1 {
				CategoriesList()
			}
		}
		.background(
			Rectangle()
				.foregroundColor(.white)
		)
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
