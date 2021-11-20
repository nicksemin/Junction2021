//
//  BackGroundGeometryReader.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

struct BackgroundGeometryReader: View {
	var body: some View {
		GeometryReader { geometry in
			return Color
					.clear
					.preference(key: SizePreferenceKey.self, value: geometry.size)
		}
	}
}
