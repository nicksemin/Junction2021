//
//  Question.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import Foundation
import SwiftUI

struct Question: Hashable, Identifiable {
	let id = UUID()
	let content: String
	let likes: Int
}
