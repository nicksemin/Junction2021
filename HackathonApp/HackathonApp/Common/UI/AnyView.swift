//
//  AnyView.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

extension SwiftUI.View {
	public func eraseToAnyView() -> AnyView {
		return AnyView(self)
	}
}
