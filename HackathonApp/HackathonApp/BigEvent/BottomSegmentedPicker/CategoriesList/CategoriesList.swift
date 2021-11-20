//
//  CategoriesList.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

struct CategoriesList: View {
	var body: some View {
		NavigationView {
			List(categories) { category in
				NavigationLink(
					destination:
						Rectangle()
							.foregroundColor(.green)
					,
					label: {
						Rectangle()
							.foregroundColor(.pink)
				})
			}
			.navigationTitle("Categories")
		}
	}
}

//struct LandmarkList_Previews: PreviewProvider {
//	static var previews: some View {
//		ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
//			LandmarkList()
//				.previewDevice(PreviewDevice(rawValue: deviceName))
//				.previewDisplayName(deviceName)
//		}
//	}
//}
