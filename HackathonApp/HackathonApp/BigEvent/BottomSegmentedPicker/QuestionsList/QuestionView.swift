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
		VStack(alignment: .leading) {

				Text(model.content)
					.cardSubtitle()
					.foregroundColor(.black)
					.padding(16)
					.multilineTextAlignment(.leading)


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

