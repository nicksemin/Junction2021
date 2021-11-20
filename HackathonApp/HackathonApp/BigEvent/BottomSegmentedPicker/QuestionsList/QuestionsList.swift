//
//  QuestionsList.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

struct QuestionsList: View {
	var body: some View {
		ScrollView(.vertical) {
			VStack {
				ForEach(questions) { question in
					QuestionView(model: question)
						.frame(maxWidth: .infinity)
				}
			}
			.frame(maxHeight: .infinity)
		}
	}
}

struct QuestionsList_Previews: PreviewProvider {
	static var previews: some View {
		QuestionsList()
	}
}
