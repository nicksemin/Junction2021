//
//  MockDataForEvent.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import Foundation

let categories: [CategoryModel] = [
	CategoryModel(title: "Tech", questions: []),
	CategoryModel(title: "Sales", questions: []),
	CategoryModel(title: "Marketing", questions: []),
	CategoryModel(title: "Accounting", questions: []),
]


let questions: [QuestionModel] = [
	QuestionModel(
		content: "How do you propose to solve the lack of microelectronic devices in car industry?",
		likes: 34
	),
	QuestionModel(
		content: "Do you feel that sustainable future could be achieved only through consolidation of all nations and countries?",
		likes: 67
	),
	QuestionModel(
		content: "Do you have any statistics regarding the influence of electronic cars manufacturing impact?",
		likes: 15
	),
	QuestionModel(
		content: "What sustainability certifications or frameworks exist?",
		likes: 23
	),
	QuestionModel(
		content: "What is meant by the green economy?",
		likes: 10
	),
	QuestionModel(
		content: "How does the facilities team juggle day-to-day code compliance, training and operations issues, and also support sustainability?",
		likes: 21
	),
	QuestionModel(
		content: "What’s going on outside of our buildings? Are you handling our grounds in a sustainable way?",
		likes: 8
	),
	QuestionModel(
		content: "Have we completed an energy audit? Are you tracking and managing energy?",
		likes: 12
	)
]

let profile = EventProfileModel(
	title: "Sara Johnson",
	time: "12:00 PM - 2:00 PM"
)

