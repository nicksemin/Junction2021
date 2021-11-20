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
				.frame(width: 100)
				.padding(20)
				.foregroundColor(.pink)

			VStack(alignment: .leading) {
				Text("Заголовок")
					.cardTitle()
					.foregroundColor(.black)
				Text("Check out some interesting questions about topic here")
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
