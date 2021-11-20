//
//  BigEventScreen.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

struct BigEventScreen: View {
	var body: some View {
		VStack {
			Rectangle()
				.foregroundColor(.pink)
				.padding()
			SegmentedPickerContainer()
				.frame(
					  minWidth: 0,
					  maxWidth: .infinity,
					  minHeight: 600,
					  maxHeight: 600,
					  alignment: .topLeading
				)
		}
		.background(Color.blue)
		.ignoresSafeArea(edges: .bottom)
	}
}

struct BigEventScreenPreviewView: PreviewProvider {
	static var previews: some View {
		BigEventScreen()
	}
}
