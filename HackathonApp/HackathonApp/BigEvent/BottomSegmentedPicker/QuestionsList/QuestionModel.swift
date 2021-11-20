//
//  Question.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import Foundation
import SwiftUI

struct QuestionModel: Identifiable {
	let id = UUID()
	let content: String
	var likes: Int
}
