//
//  BigEventScreen.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

struct BigEventScreen: View {
	var body: some View {
		NavigationAndPlusItemContainer {
			VStack {
				EventProfileView(model: profile)
				SegmentedPickerContainer()
					.frame(
						minWidth: 0,
						maxWidth: .infinity,
						minHeight: 600,
						maxHeight: 600,
						alignment: .topLeading
					)
			}
			.padding(.top, 60)
			.background(
				LinearGradient(
					gradient: Gradient(colors: [BrellaColor.green, BrellaColor.purple, BrellaColor.purple, BrellaColor.purple]),
					startPoint: .top,
					endPoint: .bottom
				)
			)
			.cornerRadius(40)
			.ignoresSafeArea()
		}
	}
}

struct BigEventScreenPreviewView: PreviewProvider {
	static var previews: some View {
		BigEventScreen()
	}
}
