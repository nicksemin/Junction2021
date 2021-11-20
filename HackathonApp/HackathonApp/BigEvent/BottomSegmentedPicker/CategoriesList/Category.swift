//
//  Category.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import Foundation
import SwiftUI

struct Category: Hashable, Identifiable {
	var id = UUID()
	let title: String
	let questions: [Question]
}
