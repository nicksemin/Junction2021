//
//  QuestionView.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

struct EventProfileView: View {
	var model: EventProfileModel

	var body: some View {
		VStack {
			Image("avatar")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 80)
				.cornerRadius(8)
				.padding(.top, 10)

			Text(model.title)
				.font(.system(size: 16, weight: .bold, design: .default))
				.foregroundColor(.white)
				.padding(.top, 8)


			Text("\(model.time)")
				.font(.system(size: 16, weight: .regular, design: .default))
				.foregroundColor(.white)

		}
		.padding(.all, 16)
	}
}

struct EventProfileView_Previews: PreviewProvider {
	static var previews: some View {
		EventProfileView(model: profile)
	}
}
