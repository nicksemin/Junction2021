//
//  CategoryView.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

struct CategoryView: View {

	var model: CategoryModel

	var body: some View {
		HStack(alignment: .center) {
			Circle()
				.frame(width: 60)
				.padding(20)
				.foregroundColor(.random)

			VStack(alignment: .leading) {
				Text(model.title)
					.cardTitle()
					.foregroundColor(.black)
				Text("Check out some interesting questions about the topic here!")
					.cardSubtitle()
					.foregroundColor(.gray)
			}.padding(.trailing, 20)
			Spacer()
		}
		.frame(maxWidth: .infinity, alignment: .center)
		.background(Color.white)
		.modifier(CardModifier())
		.padding(.all, 10)
	}
}

extension Color {
	static var random: Color {
		return Color(
			red: .random(in: 0...1),
			green: .random(in: 0...1),
			blue: .random(in: 0...1)
		)
	}
}
