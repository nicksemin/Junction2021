//
//  CategorisedQuestionsList.swift
//  HackathonApp
//
//  Created by Nick Semin on 21.11.2021.
//

import SwiftUI

struct CategorisedQuestionsList: View {
    var body: some View {
            NavigationItemContainer{
                ScrollView(.vertical) {
            VStack {
                ForEach(questions) { question in
                    QuestionView(model: question)
                        .frame(maxWidth: .infinity)
                }
            }
            }
           
        } .padding(.top, 80)
            .ignoresSafeArea()
           .frame(maxHeight: .infinity)
    }
}

struct CategorisedQuestions_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsList()
    }
}
