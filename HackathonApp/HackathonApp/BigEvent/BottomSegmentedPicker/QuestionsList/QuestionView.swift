//
//  QuestionView.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

struct QuestionView: View {
	var model: QuestionModel

	var body: some View {
		HStack {
			VStack {

				Text("Check out some interesting questions about topic here")
					.cardSubtitle()
					.foregroundColor(.black)
					.padding(.vertical, 16)

				HStack {
					Image("active_like")
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(width: 20)

					Text("\(model.likes)")
						.font(.system(size: 16, weight: .regular, design: .default))
						.foregroundColor(.black)

					Spacer()
				}
				.padding(16)
			}
			.background(Color.white)
			.modifier(CardModifier())
			.padding(.all, 16)
		}

	}
}

