//
//  CategoriesList.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

struct CategoriesList: View {
	var body: some View {
		ScrollView(.vertical) {
			VStack {
				ForEach(categories) { category in
                    NavigationLink(destination: CategorisedQuestionsList()){
					CategoryView(model: category)
						.frame(maxWidth: .infinity)
						.frame(height: 140)
				}
                }
			}
			.background(Color.white)
		}
	}
}
