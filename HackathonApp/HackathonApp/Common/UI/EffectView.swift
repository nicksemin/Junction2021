//
//  EffectView.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 21.11.2021.
//

import SwiftUI

internal struct EffectView: UIViewRepresentable {

	internal var effect: UIVisualEffect


	internal func makeUIView(context: Context) -> UIVisualEffectView {
		let effectView = UIVisualEffectView(effect: self.effect)

		return effectView
	}

	internal func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
		uiView.effect = self.effect
	}
}

struct EffectView_Previews: PreviewProvider {
	static var previews: some View {
		EffectView(effect: UIBlurEffect(style: .regular))
	}
}
