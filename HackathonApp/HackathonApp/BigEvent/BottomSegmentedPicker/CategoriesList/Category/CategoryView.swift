//
//  CategoryView.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import Foundation

/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

struct CategoryView: View {

	var model: CategoryModel

	var body: some View {
		HStack(alignment: .center) {
			Circle()
				.frame(width: 100)
				.padding(20)
				.foregroundColor(.pink)

			VStack(alignment: .leading) {
				Text("Заголовок")
					.cardTitle()
					.foregroundColor(.white)
				Text("Check out some interesting questions about topic here")
					.cardSubtitle()
					.foregroundColor(.gray)
			}.padding(.trailing, 20)
			Spacer()
		}
		.frame(maxWidth: .infinity, alignment: .center)
		.background(Color(red: 32/255, green: 36/255, blue: 38/255))
		.modifier(CardModifier())
		.padding(.all, 10)
	}
}
//
//struct CategoryView_Previews: PreviewProvider {
//	static var previews: some View {
//		CategoryView(
//			model: CategoryModel(
//				title: "Business",
//				questions: []
//			)
//		)
//	}
//}

